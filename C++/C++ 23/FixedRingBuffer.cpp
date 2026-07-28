#include <iostream>
#include <print>
#include <array>
#include <optional>
#include <concepts>
//DID NOT DO THIS ASSIGNMENT CORRECTLY 
using size_t= std::size_t;

template <std::movable T, size_t N>
class FixedRingBuffer { 
private:
    std::array<T,N> data;
    size_t head=0; 
    //size_t tail=N;// was never need
    size_t count=0;
public:
    FixedRingBuffer() = default; 
    ~FixedRingBuffer() = default;
    
    //ADD empty and full for strict emptiness
    bool empty() const {return count == 0;}
    bool full() const {return count == N;}
    
    void push(T&& value){ //rvalue 
       /*
       Wrong WAY of doing this 
        if(count==N){
            count=head;
            head=(head+1)%N;
        }
        data[count]=std::move(value);
        count=(count+1)%N; 
        */
        // Calculate where to write.
        // If full, we overwrite 'head'. If not full, we write at 'head + count'.
        size_t write_index= (head + count) % N;
        data[write_index]=std::move(value);
        
        if( full() ) {
            // We overwrote the oldest element (head).
            // So head must move forward to the next oldest.
            head = (head+1) % N;
        }
        else{ count++; } // We just added a new item into empty space.
    }

    std::optional<T> pop(){
        if(empty()){ // check logical count, not array size;
            return std::nullopt; // use to return nothing. for optional 
        }

        // Move out
        std::optional<T> temp = std::move(data[head]);
        // Update state
        head = (head +1) % N;
        count--;
        return temp;
    }

    /*
    WRONG 
    template<typename Visitor>
    void for_each(Visitor V){
        for(auto& x: data){
            V(x);
        }
    };
    */
    // Accepts any callable (Lambda or Function)
    template<typename Visitor>
    void for_each(Visitor&& v){
        // We must iterate LOGICALLY (0 to count), not PHYSICALLY (0 to N).
        for(auto i{0uz};i<count;i++){
            // Calculate physical index for the i-th logical element
            size_t index=(head+i)%N;
            v(data[index]);
        }
    }
    void print(){
        std::print("[");
        for_each([](const T& v){std::print("{},",v);});
        std::println("]");
    }
};


int main(){
    FixedRingBuffer<int,3> a;
    a.push(1);
    a.push(2);
    a.push(3);
    a.print(); // Expect: 1, 2, 3

    std::println("--- Push 4 (Overwrite 1) ---");
    a.push(4); 
    a.print(); // Expect: 2, 3, 4 (Correct logical order!)

    std::println("--- Pop (Remove 2) ---");
    a.pop();
    a.print(); // Expect: 3, 4

    std::println("--- Push 5, 6 (Overwrite 3) ---");
    a.push(5);
    a.push(6);
    a.print(); // Expect: 4, 5, 6
    
    return 0;
}
