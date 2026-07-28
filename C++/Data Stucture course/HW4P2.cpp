/******************************************************************************
Allan Yunayev
2.	Two words are said to be anagrams if they contained the same characters but 
in different order – for instance “rescue” and “secure”.  Write a program that 
takes to strings and determines if they are anagrams of each other (hint – sort 
both words and check if they match)

*******************************************************************************/
#include <iostream>
#include <string>
using namespace std;

void BubbleSort(int array[],int size){
    for(int i=0;i<size;i++){
        for(int j=i+1;j<size;j++){
            if(array[j]< array[i]){
                int temp= array[i];
                array[i]=array[j];
                array[j]=temp;
            }
        }
    }
}

int main() {
cout << "------------------------------------------------------------------------------\n";
cout << "Name: " << "Allan Yunayev" << endl;
cout << "FILE: " << __FILE__ << " DATE: " << __DATE__ << endl;
cout << "------------------------------------------------------------------------------\n";    
string word1, word2;
cout<<"Write a word: "<<endl;
getline(cin,word1);
cout<<"Write another word and I will tell you if it is an anagram: "<<endl;
getline(cin,word2);

// if the size is different it cant be an anagram so we will end the code if != 
//Size 
if(word1.size()!=word2.size() ){
    cout<<"The two words are not an anagram "<<endl;
    return 0;
}

int word1Array[word1.size()-1];
int word2Array[word2.size()-1];

for(int i=0;i<word1.size();i++){
    word1[i]=tolower(word1[i]);
    word1Array[i]=word1[i];
    word2[i]=tolower(word2[i]);
    word2Array[i]=word2[i];
}

BubbleSort(word1Array,word1.size());
BubbleSort(word2Array,word2.size());

for(int i=0;i<word1.size();i++){
    if(word1Array[i]==word2Array[i]){
        continue;
    }
    else{
    cout<<"The two words are not an anagram "<<endl;
    return 0;
    }
}

    cout<<"Your Two words are an anagram "<<endl;
    return 0;
}
