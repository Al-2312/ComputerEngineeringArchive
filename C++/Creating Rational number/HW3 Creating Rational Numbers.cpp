/******************************************************************************
Allan Yunayev
hw make a rational program that add, subtracts, multiply and divide 
*******************************************************************************/
#include <iostream>
using namespace std;
int main()
{
    int P,Q,M,N, testcase;
    cout<<" Enter your first rational number"<<endl;
    cin>>P>>Q;
    cout<<" Enter your second rational number"<<endl;
    cin>>M>>N;
    
    while (N == 0 || Q ==0){
        if(N == 0){
            cout<< "Your N can not be 0 enter another number"<<endl;
            cin>>N;
        }
        if(Q == 0){
            cout<< "Your Q can not be 0 enter another number"<<endl;
            cin>>Q;
        }
    }// to make sure the second pair of rational is not = to 0
    
    cout<<"\nPress 1: Add 2: Subtract 3: Multiply  4: Divide\n";
    cin>>testcase;
    cout<<endl;
    
    switch(testcase){
        case 1:
            int addNum;
            int addDem;
            if(Q%N ==0){
                addNum=(P)+(M*(Q/N));
                addDem=(Q);
            }
            else if(N%Q ==0){
                addNum=(P*(N/Q))+(M);
                addDem=(N);
            }
            
            else{
            addNum= (P*N)+(M*Q);
            addDem= (N*Q);
            }
            cout<<"The addion of ( "<<P<<" , "<<Q<<" ) and ( "<<M<<" , "<<N<<" ) is ( "<<addNum<<" , "<<addDem<<" )\n";
            break;
            
        case 2:
            int subNum;
            int subDem;
            if(Q%N ==0){
                subNum=(P)-(M*(Q/N));
                subDem=(Q);
            }
            else if(N%Q ==0){
                subNum=(P*(N/Q))-(M);
               subDem=(N);
            }
            
            else{
            subNum= (P*N)-(M*Q);
            subDem= (N*Q);
            }
            cout<<"The subtraction of ( "<<P<<" , "<<Q<<" ) and ( "<<M<<" , "<<N<<" ) is ( "<<subNum<<" , "<<subDem<<" )\n";
            break;
            
        case 3:{
            
            int multNum = (P*M);
            int multDem = (Q*N);
            cout<<"The Multiplication of ( "<<P<<" , "<<Q<<" ) and ( "<<M<<" , "<<N<<" ) is ( "<<multNum<<" , "<<multDem<<" )\n";
            break;
        }// for some reason it give an error if i dont include the {}; 
        case 4:
            int divNum=(P*N);
            int divDem=(Q*M);
            cout<<"The division of ( "<<P<<" , "<<Q<<" ) and ( "<<M<<" , "<<N<<" ) is ( "<<divNum<<" , "<<divDem<<" )\n";
            break;
    }
    
    
    return 0;
}