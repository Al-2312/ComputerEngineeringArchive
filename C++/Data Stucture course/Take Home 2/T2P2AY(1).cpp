/******************************************************************************
Allan Yunayev

(2) Template – 50 pts

Write a templated class that creates a Vector class that can satisfy the 
following requirements:

1. Create an integer Vector of length (Size) and Capacity (Cap)
DONE
2. Provide necessary constructors, destructors and copy constructors
DONE
3. Member function length() that returns the size of the Vector
DONE
4. Overloaded assignment operator=( ) //assigns one vector another vector 
(e.g. V1 = V2) DONE

5. Overloaded index operator[]

6. push_back( ) member function that adds a new value at the next empty 
space in the vector thus increasing its size

7. pop_back() member function that removes the last element of the vector thus 
reducing the size of the vector

8. find( value) member function that returns the requested value. In the event 
that it does not find value returns NULL

9. at(index) member function – throws exception if index > capacity

10. insert(index, value) – inserts new value at index and reshuffles remaining 
values to new positions as well as updates size.

11. Overloaded operator<<(… ) – outputs vector elements  DONE

12. Overloaded operator+(const int factor) – increases vector elements by factor
DONE
13. Overloaded operator+=(… ) – adds rhs vector to existing vector

Demonstrate the following:

a) Instantiate integer vectors of size zero – IArray_1 and IArray_2

b) Push back into IArray_1 {10,11,12, 13,14}and IArray_2 {1,2,3,4,5,6,8,…, 12}

c) Display integer arrays IAraay_1 and IArray_2

d) Modify IArray_1 by 2 & Display Updated IArray_1

e) Instantiate character array CArray of zero length

f) Push-back into CArray{‘A’,’B’,C’…’J’) & show length

g) Display CArray

h) Display CArray[20]

*******************************************************************************/
#include <iostream>
using namespace std; 

template<class T>
class Vector{
protected:
    int Size;
    int Cap;
    T * pType;
public:
// Default constructor
    Vector(){
    Size=0; Cap=0; pType=nullptr; 
    }
// Parametrized Constructor
    Vector(int size){
    Size=size;
    }
// Copy Constructor
    Vector(const Vector &rhs);
// Destructor
    ~Vector(){
        delete [] pType;
    }    
    //Operators
         Vector<T>& operator=(const Vector<T>& rhs);
     T& operator[](int offSet);
const T& operator[](int offSet) const; //works with const objects
     Vector<T> operator+(const int factor);
     Vector<T> operator+=(const Vector<T>& rhs);
      // accessors
 int length() const { return Size; }

    template <class U>
	friend ostream& operator<<(ostream& os, const Vector<U>& rhs); 
	//Functions 
    
    void resize(int NewCap){
        T* NewpType=  new T[NewCap];
    for (int i = 0; i < Size; ++i) {
            NewpType[i] = pType[i];
        }
        delete[] pType;
        pType=NewpType;
        Cap= NewCap;
    }
    
    void push_back(const T& value){
        if (Size == Cap) {
            if (Cap == 0) {
                Cap = 1; // Initial capacity
            }
            resize(Cap*2);
        }
        // Add the new element at the end
        pType[Size] = value;
        // Increment the size
        ++Size;
    }
        
    void pop_back()
    {
    if (Size > 0) {
        --Size; // Decrease the size to remove the last element
        if (Size < Cap / 2) {
            // Reduce capacity to half if size becomes too small
            Cap = Cap/2;
            T* newpType = new T[Cap];
            for (int i = 0; i < Size; ++i) {
                newpType[i] = pType[i];
            }
            delete[] pType;
            pType = newpType;
        }
    } else { cout<<"Vector is empty"<<endl; }
        
        
        
        
        
        
    }    
    T* find(const T& value){
          for (int i = 0; i < Size; ++i) {
        if (pType[i] == value) {
            // Return a pointer to the found value
            return &pType[i];
        }
    }
    return nullptr; // not in it.
    }
    T& at(int index) const{
        if(index>= Size){
            cout<<"Out of bounds"<<endl;
        }
        else{ return pType[index];}
    };
    
    void insert(int index, const T& value){
       if (index > Size) {
        cout<<"Out of bounds\n";
        return;
    }  
     if (Size == Cap) {
          resize(Cap * 2);
    }
     for (size_t i = Size; i > index; --i) {
        pType[i] = pType[i - 1];
    }
    pType[index] = value;
    ++Size;
    }
};

template <class T>			//P1=(P2=P3);
 Vector<T> & Vector<T>::operator=(const Vector<T> &rhs)
 {
     if (this == &rhs)				//P1=P1;
         return *this;
     delete [] pType;				//????
     Size = rhs.length();
     pType = new T[Size];
     for (int i = 0; i<Size; i++)
         pType[i] = rhs[i];
     return *this;
 }

template <class T>
Vector<T> Vector<T>::operator+(const int factor){
	for(int i = 0; i < Size; i++){
        pType[i] *= factor;
	}
	return *this;
}

template <class T>
Vector<T> Vector<T>::operator+=(const Vector<T>& rhs) {
    // Check if sizes match
    if (Size != rhs.Size) {
        
        cout<<"Vectors are not the same size"<<endl;;
    }

    for(int i = 0; i < Size; ++i) {
        pType[i] += rhs[i]; // Add elements
    }
    return *this;
}



template <class T>
 Vector<T>::Vector(const Vector &rhs)
 {
     Size = rhs.length();
     pType = new T[Size];
     for (int i = 0; i<Size; i++)
         pType[i] = rhs[i];
 }
 
 
template <class T>
 T& Vector<T>::operator[](int offSet)
{
     int size = length();
     if (offSet >= 0 && offSet < size)
         return pType[offSet];
     else
     {
        cout << "Out of bounds\n" << endl;  
        exit(EXIT_FAILURE);

     }
     return pType[offSet]; // to appease MSC!
 }
 
 
 
 
template <class T>
 const T& Vector<T>::operator[](int offSet) const
 {				
     int mysize = length();
     if (offSet >= 0 && offSet < mysize)
         return pType[offSet];
     else
     {
        cout << "Out of bounds\n" << endl;  
        exit(EXIT_FAILURE);
}
     return pType[offSet]; // to appease MSC!
 }

template <class U>
ostream& operator<< (ostream& output,
                           const Vector<U>& theVector)
 {
     for (int i = 0; i< theVector.length(); i++)
         output << "[" << i << "] " << theVector[i] << '\t';
     output << endl;
     return output;
}









int main()
{
cout << "------------------------------------------------------------------------------\n";
cout << "Name: " << "Allan Yunayev" << endl;
cout << "FILE: " << __FILE__ << " DATE: " << __DATE__ << endl;
cout << "------------------------------------------------------------------------------\n";
    Vector<int> IArray_1, IArray_2;
     IArray_1.push_back(10);
    IArray_1.push_back(11);
    IArray_1.push_back(12);
    IArray_1.push_back(13);
    IArray_1.push_back(14);
    

    IArray_2.push_back(1);
    IArray_2.push_back(2);
    IArray_2.push_back(3);
    IArray_2.push_back(4);
    IArray_2.push_back(5);
    IArray_2.push_back(6);
    IArray_2.push_back(7);
    IArray_2.push_back(8);
    IArray_2.push_back(9);
    IArray_2.push_back(10);
    IArray_2.push_back(11);
    IArray_2.push_back(12);
    
    //C
   cout<<IArray_1<<endl;
   
    
   cout<<IArray_2<<endl;
    cout<<endl;
   

   
    //d
    IArray_1=IArray_1+2;
    cout<<IArray_1<<endl;
    cout<<endl;
    
    //E
    Vector<char> CArray;
   
    //F
    CArray.push_back('A');
    CArray.push_back('B');
    CArray.push_back('C');
    CArray.push_back('D');
    CArray.push_back('E');
    CArray.push_back('F');
    CArray.push_back('G');
    CArray.push_back('H');
    CArray.push_back('I');
    CArray.push_back('J');
    
    
    cout<<"CArray Length: "<<CArray.length()<<endl;
    
    
    //G
    cout<<CArray<<endl;
    
    //H
    cout<<"CArray[20]: "<<CArray[20]<<endl;
    
    //*/
    
    
    return 0;
}
