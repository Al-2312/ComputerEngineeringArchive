/******************************************************************************
2.	Write a function that takes as argument an array of integers and the size 
of the array and returns the average of the input values.
o	Int = avrg(int * array, int size)  
Allan Yunayev
*******************************************************************************/
#include <iostream>
using namespace std;
int avrg(int * array, int size); //function prototype 
int main()
{
    int size;
    cout<<"What is the size for your array: "<<endl;
    cin>> size;
    int inputArray[size];
    cout<<"What are your numbers: "<<endl;
    for(int i=0;i<size;i++){
    cin>> inputArray[i];
    }//end for loop;
    int* ptrArray= inputArray; 
    int average=avrg(ptrArray,size);
    cout<<"The average for your array is : "<< average<<endl;
    return 0;
}

int avrg(int * array, int size){
int totArray=0;
for(int i=0;i<size;i++){
 totArray+= *array;
 array++;
}
int average=totArray/size; 
    return average; 
}
