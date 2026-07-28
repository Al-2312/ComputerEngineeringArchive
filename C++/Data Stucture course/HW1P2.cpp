/******************************************************************************
Allan Yunayev 
CSC 21200 HW 1 
1)	What is the decimal-base value of the following Mar al/hex constants?
a)	020
b)	0X60
c)	0XFE
d)	0XABC


a) 020 octal = 2*8=16 = 0b010000
b) 0x60 hex= 6*16+0= 96 decimal =0b01100000
c) 0XFE hex= 15*16+14=254 = 0b11111110 
d) 0XABC hex= 10*16^2+11*16+12=2748 =0b101010111100

Part 2 	
Write a C++ program that calculates sum of the first two values above using the twos-complement algorithm
	int Sum(int X, int Y);		//function prototype
		int Result = Sum( (int)042, (int)0X42);
return Result;

*******************************************************************************/
#include <iostream>
#include <bitset>
#include <cmath>
using namespace std;
int Sum(int X, int Y);	//function prototype

int main()
{
    int FirstInt=042;
    int SecondInt=0X42;
    int Result = Sum(FirstInt, SecondInt);
    cout<< Result<<endl;
    return 0;
}


int Sum(int X, int Y){
    bitset<32> Xbinary(X);
    bitset<32> Ybinary(Y);
    string BinaryResult="";
    int sum=0;
    int carry=0;
    for(int i=0; i<31 ; i++){ // to start with first binary digit 
        if(Xbinary[i]+Ybinary[i]+carry >= 2){
        sum=0;
        BinaryResult= BinaryResult+to_string(sum);
        carry=1;
        }
        else if(Xbinary[i]+Ybinary[i]+carry ==1){
        sum=1;
        BinaryResult= BinaryResult+to_string(sum);
        carry=0;    
        }
        else if(Xbinary[i]+Ybinary[i]+carry ==0){
        sum=0;
        BinaryResult= BinaryResult+to_string(sum);
        carry=0;    
        }
    }
    string rev = string(BinaryResult.rbegin(), BinaryResult.rend());
    bitset<32> Answer(rev);
    int Result=0;
    for(int i=31;i>=0;i--)
    Result=Result+( Answer[i]*pow(2,i));
    
return Result;
}

