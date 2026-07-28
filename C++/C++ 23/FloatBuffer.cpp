#include <iostream>
#include <print>
#include <algorithm>
#include <cstddef>
#include <utility>
using size_t = std::size_t; // forgot to make into std a
class FloatBuffer {
private:
	float* data_ptr;
	size_t size;
public:
	FloatBuffer(size_t size) : size{size}, data_ptr{size ? new float[size]{} : nullptr } {}; // FloatBuffer with only size;
	FloatBuffer(const FloatBuffer& a): data_ptr{a.size ? new float[a.size]{}: nullptr}, size{a.size}{
		for (auto i{0uz}; i != size ; i++){
			data_ptr[i]=a.data_ptr[i];
		} 
		/*
		ALT VERSION 
		if(data_ptr)
		{
			std::copy(a.data_ptr, a.data_ptr + size, data_ptr); 
		}
		*/
	}// copy constructor
	
	FloatBuffer& operator=( FloatBuffer a)
	{
		swap(*this, a);
		return *this;
	}// copy assignment	
	
	friend void swap(FloatBuffer& f,FloatBuffer& s) noexcept {
		std::swap(f.size,s.size);
		std::swap(f.data_ptr,s.data_ptr);
	}

	FloatBuffer(FloatBuffer&& a) noexcept: data_ptr{std::exchange(a.data_ptr,nullptr)}, size{std::exchange(a.size,0)} {}//move consuctor 
	
	FloatBuffer& operator=(FloatBuffer&& a) noexcept
	{
		// to fix leak do this
		if(this == &a) {return *this;} //handling self-assignemt
		delete[] data_ptr; // free old memeory/ old address first
		size=std::exchange(a.size,0);
		//Memory LEAK with out deletion
		data_ptr=std::exchange(a.data_ptr,nullptr);		
		return *this;
	}	
	~FloatBuffer(){delete[] data_ptr;}

	//added const in beginning for read 
	const float& operator[](std::size_t val) const //need two for read and write
	{
		return data_ptr[val];
	}
	// write
	float& operator[](std::size_t val){
		return data_ptr[val];
	} 
	friend FloatBuffer operator+(const FloatBuffer& a, const FloatBuffer& b)
	{
                if(a.size!=b.size){throw -1;}
			FloatBuffer r{a.size};
                for(auto i{0uz};i != a.size; i++)
                {
                        r[i]=a[i]+b[i];
                }
                return r;
        }

	std::size_t getSize() const
	{
		return size; 
	}

	float* begin() {
		return data_ptr;
	}
	float* end() {
		return data_ptr+size; //do NOT USE &data_ptr[size] 
	}
	const float* begin() const{
		return data_ptr;
	}
	const float* end() const{
		return data_ptr+size;
	}
};
FloatBuffer operator"" _zeros (unsigned long long val)
{
	return FloatBuffer{val};
}
int main() {
    FloatBuffer hi{5};
	hi[0]=1.5;
   	hi[1]=2.5;
   	hi[2]=3.5;
   	hi[3]=4.5;
   	hi[4]=5.5;

    for(auto val : hi ){
	    std::cout<<val<<"\n";
    }

    return 0;

} 
