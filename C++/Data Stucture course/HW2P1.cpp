/*
1.	Write a program having a  String class that contains a function that can 
reverse the order of the characters in a string. A palindrome is a word or group
of words that read the same forward and backward. For example, “madam” or “wow”.
Write a program that takes a string argument from the command line and returns 
TRUE if the string is a palindrome.
Allan Yunayev
*/
#include <iostream>
using namespace std;
int main()
{
    cout<<"Hello please write a word to see if it is a palindrome: "<<endl;
    string input;
    cin>>input; 
    string lower= "";
    for(int i=0;i<input.size();i++){
        lower+=tolower(input.at(i));
    }
    string reverse= string(lower.rbegin(),lower.rend());
    if(lower == reverse){
        cout<<"Palindrome: TRUE"<<endl;
    }
    else{
        cout<<"Palindrome: FLASE"<<endl;
    }

    return 0;
}
