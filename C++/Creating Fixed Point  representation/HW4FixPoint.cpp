/******************************************************************************
Hello students, the homework for the upcoming week is the following: 1- Create a
rational number class and 2- Create a fixed point class. Make sure to implement
all the methods for all the operations that we can apply to those numbers.
*******************************************************************************/
#include <iostream>
#include <bitset>
#include <cmath>

using namespace std;
class FixedPoint
{
    private:
    int size;
    int point;
    int diff;
    int num;
    double Result;

    public:
    FixedPoint(int siz, int poi, int number){
        size=siz; 
        point=poi; 
        num=number; 
        
    };//constuctor
    double GetBinaryResult(){return Result;}
    
    
    
    
    void GetFixedpoint()
    {
    diff=size-point;
     string binarystring="";
    for(int i=size-1;i>=0;i--){
        binarystring+= to_string(num % 2 );
        num= num/2;
    }//in reverse 
    string revBinarystring=string(binarystring.rbegin(),binarystring.rend());
    string BinaryInt= string(revBinarystring.begin(), revBinarystring.begin()+diff);
    string BinaryPoint=string(revBinarystring.begin()+diff,revBinarystring.end());
    
    string revBinaryInt=string(BinaryInt.rbegin(),BinaryInt.rend());
    int intresult;//loop for binaryint
    for(int i=0;i<BinaryInt.size();i++){
        intresult+= stoi( revBinaryInt.substr(i,1) )*pow(2,i);
    }
    
    double doubleresult;//loop for binaryint
    for(int i=0;i<BinaryPoint.size();i++){
        doubleresult+= stod( BinaryPoint.substr(i,1) )*pow(2,(-1*i)-1);
    }
    Result=intresult+doubleresult;
    
    cout<<"Binary: "<<revBinarystring<<" Fixed Point: "<< BinaryInt<<"."<<BinaryPoint<<" = "<<Result<<endl;
     
    }
    
    
};

int main()
{
    int number=10;
    int size=8;
    int point=3;
    FixedPoint binary1(size,point,number);
    binary1.GetFixedpoint();
    
    return 0;
}

