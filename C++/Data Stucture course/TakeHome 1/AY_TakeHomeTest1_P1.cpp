/******************************************************************************
Allan Yunayev Take Home test 1 P1
1.	Write a program that creates an Integer class Weight which is defined by a 
pair of weights –  Pounds (Lb) and Ounces(Oz).  The class should contain the '
following member and friend functions:


•	This class should contain two private(protected) integer member variables 
(Lb,Oz) that represent a Weight  value(Lb, Oz) 

•	Default constructor (sets Lb=0, Oz=0) – print constructor message
•	Parametrized constructor (int lb , int oz) – print constructor  message
•	Copy constructor( ) – print constructor message
•	Destructor( ) – print destructor message
•	Overloaded assignment operator=(const Weight &rhs ) – print message

•	Overloaded summation operator+( const Weight &rhs ) that returns a Weight 
object  – adds two weights (mod % 16)

•	Overloaded difference operator-( const Weight &rhs ) that returns a Weight 
object – subtracts two Weights (mod % 16)

•	Overloaded scaling operator*(const int Scale) that returns Weight object – 
which inflates the Weight by a scalar Scale – returns a Weight 

•	friend function output ostream & operator<<(ostream & os,  const Weight 
&rhs ) – outputs Weight object (lb and oz)

•	void setWeight(int lb1, int oz1) – sets Lb and Oz to argument values

Demonstrate the following items:
•	Weight  A(10, 4), B(4,15), C, D;
•	C = A + B;
•	Print (cout<< C)
•	D = B*scale;		(scale = 3)
•	Print (cout<< D)
•	C = A - B;	  (print output)	
•	Recall that all Weights have to be mod (16%) 


*******************************************************************************/
#include <iostream>
using namespace std;
class Weight{
protected:
  int Lb;
  int Oz;
public:
// Default constructor
    Weight(){
    cout<<"Weight Default Constructor: "<<endl;
    Lb=0; Oz=0;
    }
// Parametrized Constructor
    Weight(int lb,int oz){
    cout<<"Weight Parametrized Constructor: "<<endl;
    Lb=lb; Oz=oz;
    }
// Copy Constructor
    Weight(const Weight &rhs){
    cout<<"Weight Copy Constructor: "<<endl;   
    Lb= rhs.Lb;  Oz= rhs.Oz;
    }
// Destructor
    ~Weight(){
    cout<<"Weight Destructor: "<<endl;     
    }
//get function
   // int getLb()const{return Lb;}
    //int getOz()const{return Oz;}
// Overloaded Operator
    Weight operator=(const Weight &rhs){
        cout << "operator=() " << endl;
        	if(this != &rhs){		//this pointer contains address of object
					//R1=R1
		Lb = rhs.Lb;	
		Oz = rhs.Oz;	//finished xfer of rhs to me
	}
	return *this;			// 
}
    
    
    Weight operator+(const Weight &rhs){
    int Lb_add;
    int Remander;
    int L;
    int O;
    L=Lb+rhs.Lb ;
    O=Oz+rhs.Oz;
    if(O>=16){
        Lb_add=O/16;
        Remander=O%16;
        O=Remander;
        L=L+Lb_add;
    }
    return Weight(L,O);
 }//end +
 
    Weight operator-(const Weight &rhs){
        int Lb_add;
    int Remander;
    int L;
    int O;
    L=Lb-rhs.Lb ;
    O=Oz-rhs.Oz;
    if(O<0){
        L=((L*16)+O);
        Lb_add=L/16;
        Remander=L%16;
        O=Remander;
        L=Lb_add;
    }
    return Weight(L,O);
 }//end -
 
    Weight operator*(const int Scale){
        int Lb_add;
        int Remander;
        int L;
        int O;
        L=Lb*Scale;
        O=Oz*Scale;
    if(O>=16){
        Lb_add=O/16;
        Remander=O%16;
        O=Remander;
        L=L+Lb_add;
    }
    return Weight(L,O);
    }



// Friend operator
    friend ostream& operator<<(ostream& os, const Weight &rhs){
 os << rhs.Lb<<" Lb, "<<rhs.Oz<<" Oz";
return os;
}// end << 

//Function
    void setWeight(int lb1,int oz1){
    Lb=lb1;
    Oz=oz1;
}//end setWeight
};// end of Weight



int main()
{
cout << "------------------------------------------------------------------------------\n";
cout << "Name: " << "Allan Yunayev" << endl;
cout << "FILE: " << __FILE__ << " DATE: " << __DATE__ << endl;
cout << "------------------------------------------------------------------------------\n";
    Weight  A(10, 4), B(4,15), C, D;
    int scale= 3; 
    C= A+B;
    cout<<C<<endl;
    D=B*scale;
    cout<<D<<endl;
    C=A-B;
    cout<<C<<endl;
    return 0;
}//end of main; 




