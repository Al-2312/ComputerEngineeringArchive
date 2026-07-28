#include <iostream>
#include <print>
#include <concepts>
#include <optional>
#include <array>

template <std::default_initializable T, std::size_t N>
class StaticObjectPool{
private:    
    std::array<T,N> pool;
    std::array<bool, N> in_use{};// need {} zero initalliztion
public:
    StaticObjectPool()=default;
    ~StaticObjectPool()=default;

    T* acquire()
    {
        for(auto i{0uz};i<N;i++)
        {
            if(!in_use[i])
            {
                in_use[i]=true;
                T* ptr= &pool[i];
                return ptr;
            }
        }
        return nullptr;
    }

    void release(T* ptr){
        if(!((ptr >= &pool[0])&&(ptr <= &pool[N-1]))){
            std::println("ERROR");
            return;
        }
        std::size_t index = ptr - &pool[0]; 
        if(in_use[index]){
            in_use[index]=false;
            return;
        }
        else{
            std::println("PTR already free");
            return;
        }
    }
};

struct Particle {
    float x, y;
};

int main(){
    // 1. Create a pool of size 3
    std::println("--- Creating Pool of Size 3 ---");
    StaticObjectPool<Particle, 3> pool;

    // 2. Fill the pool
    std::println("--- Acquiring 3 Objects ---");
    Particle* p1 = pool.acquire();
    Particle* p2 = pool.acquire();
    Particle* p3 = pool.acquire();

    if (p1 && p2 && p3) {
        std::println("Success: Acquired 3 objects.");
        // Modify data to prove we have valid memory
        p1->x = 10.0f; 
        p2->x = 20.0f;
        std::println("p1->x: {}, p2->x: {}", p1->x, p2->x);
    } else {
        std::println("Error: Failed to acquire initial objects.");
    }

    // 3. Overflow Test
    std::println("--- Try to Acquire 4th Object (Should Fail) ---");
    Particle* p4 = pool.acquire();
    if (p4 == nullptr) {
        std::println("Success: Pool correctly returned nullptr when full.");
    } else {
        std::println("Error: Pool gave us a pointer when it should be full!");
    }

    // 4. Release and Re-use Test
    std::println("--- Releasing p2 and Re-acquiring ---");
    pool.release(p2); // Free the middle slot
    
    Particle* p5 = pool.acquire(); // Should get the slot p2 used to have
    if (p5 == p2) {
        std::println("Success: Re-acquired the released slot.");
    } else {
        std::println("Error: Did not reuse the released slot (or pool logic is wrong).");
    }

    // 5. Invalid Pointer Test (The "Pointer Math" Trap)
    std::println("--- Releasing Invalid Pointer (Stack Variable) ---");
    Particle stack_particle;
    pool.release(&stack_particle); // Should print an error, NOT crash
    
    // 6. Double Free Test
    std::println("--- Double Free Test (Releasing p1 twice) ---");
    pool.release(p1); 
    pool.release(p1); // Should print "Slot already free" or similar
    return 0;
}
