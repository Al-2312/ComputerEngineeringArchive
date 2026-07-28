/******************************************************************************
Allan Yunayev
(1) Hash Function– 50 pts

You are employed by the Amazon Publishing and you have received the following 
manuscript that

contains the following words in the Heming.txt file

You need to do the following steps:

a. Create an array of Node pointers(size =17)& init to NULL.(Node *Ptr[17]=
{NULL};

b. The Nodes are identified by the following structure:

struct Node{
string Word; //string name
int WrdLen; //length of string
}

c. For each Node pointer create an array of Nodes(Size = 32) on the heap.

d. Read each word in the Smiley.txt and store it into the string variable(Text).
Use the “#” as marker for terminating inputting from file.

e. Input Text into the Hash function Hash(string Text, int Key) which calculates 
the Sum of all the characters and performs the following operation (Sum%Key) 
which produces an Index into the Hash Table. The value of Key is identical 
to the the size of array of Node pointers.

f. Use the output Index as the entry into the Hash Table.

g. Store Text and its length into the next available Node for the calculated 
Index

h. Create a Histogram array(size = Key) which elements count the number of words
that are stored in each node of the Hash Table

i. Print the Histogram and calculate the total number of words stored in Hash 
Table. Does this number match the results produced by:
· wc Heming.txt (Linux function)
j. Output all the words in line 10 of the Hash Table

k. Test your Hash Table for the following words:
classic, Jake, Sun, Paris, war, flamboyant, novels, journey, book
If your target word cannot be found in Hash Table, print "WORD
CANNOT BE FOUND"

*******************************************************************************/
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
using namespace std;

//B
struct Node{
string Word; //string name
int WrdLen; //length of string
};

int Hash(const string& Text, int Key) {
    int sum =0;
    for (int i = 0; i < Text.length(); i++) {
        sum = sum+ Text[i];
    }
    return sum % Key;
}
int main()
{
  cout <<"------------------------------------------------------------------------------\n";
  cout << "Name: " << "Allan Yunayev" << endl;
  cout << "FILE: " << __FILE__ << " DATE: " << __DATE__ << endl;
  cout << "------------------------------------------------------------------------------\n";
 //Node* currentNode;
 //A
  int KEY=17;
  Node* Ptr[KEY]={nullptr};
  //c
  for (int i = 0; i < KEY; i++) {
        Ptr[i] = new Node[32]; // Create an array of 32 Nodes for each pointer
    }
    //D
    std::ifstream inputFile("Heming.txt"); // Open the input file
    if (!inputFile.is_open()) {
        cout << "Failed to open the file." << endl;
        return 0;
    }
     string Text; // String variable to store the words
    string word;

    while (inputFile >> word && word != "#") {
        Text += word + " "; // Append each word to the Text string
            //E 
    
int HashIndex = Hash(word, KEY);
 Node* currentNode= Ptr[HashIndex];

    // G
    //int textLength = Text.length();
    while (currentNode != nullptr && currentNode->Word != "") {
        currentNode++;
    }
    if (currentNode != nullptr) {
        currentNode->Word = word; 
        currentNode->WrdLen = word.length();
     } 

     else {
        cout << "Error: Hash collision. Unable to store Text." << endl; 
     }
}

    inputFile.close(); 
    
      // H DONE
    int Histogram[KEY] = {0}; // Initialize histogram array with zeros
    int totalWords = 0;
    for (int i = 0; i < KEY; ++i) {
        Node* currentNode = Ptr[i];
        while (currentNode != nullptr && currentNode->Word != "") {
            Histogram[i]++;
            totalWords++;
            currentNode++;
        }
    }
    //I DONE
    cout << "Histogram:" << endl;
    for (int i = 0; i < KEY; ++i) {
        cout << "Index " << i << ": " << Histogram[i] << " words" << endl;
    }
    cout << "Total number of words stored in Hash Table: " << totalWords << endl;
    
    // J DONE
    cout << "\nWords in line 10 of the Hash Table:" << endl;
Node* currentNode10 = Ptr[9]; // Line 10 is index 9
    while (currentNode10 != nullptr && currentNode10->Word != "") {
    cout << currentNode10->Word << ", ";
     currentNode10++;
    }

    
    cout<<endl<<endl;
    vector<string> testWords = {"classic", "Jake", "Sun", "Paris", "war", 
    "flamboyant", "novels", "journey", "book"};
    for (int i = 0; i < testWords.size(); ++i) {
    int hashIndex = Hash(testWords[i], KEY);
    Node* currentNode = Ptr[hashIndex];
    bool found = false;
    while (currentNode != nullptr && currentNode->Word != "") {
        if (currentNode->Word == testWords[i]) { // Ensure proper comparison for equality
            found = true;
            break;
        }
        currentNode++;
    }
    if (found) {
        cout << "Word " << testWords[i] << " found at index " << hashIndex << endl;
    } else {
        cout << "Word " << testWords[i] << " CANNOT BE FOUND" << endl;
    }
}
           
                 
    
    

    for (int i = 0; i < KEY; ++i) {
        delete[] Ptr[i];
    }

    return 0;
}
