/******************************************************************************
Create a program that converts base 10 numbers into binary (base 2) and then 
determine which bit is the most significant. Due today by midnight
Allan Yunayev
CSC 34200
*******************************************************************************/
#include <iostream>
#include <math.h>
using namespace std;
int main()
{
    int number,BackToNum;
    string binarystring;
    cout<<"Give a number to be converted to binary"<<endl;
    cin>>number;
    cout<<endl;
    BackToNum=0;
    //for(int i=size-1;i>=0;i--) for given  bit size 
    while(number>0){
        binarystring+= to_string(number % 2 );
        number= number/2;
    }//in reverse 
    
    
    string revBinarystring=string(binarystring.rbegin(),binarystring.rend());
    cout<<revBinarystring<<endl;
    cout<<"Most Significant bit: "<<revBinarystring[0]<<endl;
    cout<<"Least Significant bit: "<<revBinarystring[revBinarystring.length()-1]<<endl; 
    
    int length=revBinarystring.length();
    
    for(int i =length-1; i>=0;i--){
        BackToNum+= stoi(binarystring.substr(i,1))*pow(2,i);
    }
    cout<< "Back to Base 10: "<<BackToNum<<endl;
    return 0;
}