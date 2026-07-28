/******************************************************************************
Allan Yunayev Take Home Exam 1 P2
Write a program that mimics a Text editor. Your program should collect text 
lines from the user and store them on the heap.  Suggest that you follow the  
following recipe:

b"	declare a character array,  Phrase[80], that can be used to input user text
from the keyboard via cin.getline( )

b"	declare an array of char pointers, char * ptr[25],  that can be used to 
store input data on the heap

b"	after collecting 18 lines of text, print the entire input text
b"	•	write a function(char ‘C’) that prints all lines containing  char ‘C’
b"	write a function that prints all the lines containing digits
b"	write a function Swap(int line1 = 3, int line 2 = 8) that will interchange 
line1 and line2– print updated text

b"	write a function Move(int line1 = 4, int line=6, int line3=20) that will 
move lines1-line2 to line3 - print updated text

b"	write a function Sort(char *) that sorts the entire text in ascending 
order based on the first character of each input line

b"	after sorting all the text lines, print the entire text again
b"	Use the following text as input:




As the tension of the Cold War is peaking in 1973, George Smiley, 
former senior official in Britain's Secret Intelligence Service (known 
as "the Circus" because its London office is at Cambridge Circus), is 
living unhappily in forced retirement, following the failure of an 
operation codenamed Testify in Czechoslovakia which ended in the capture 
including torture of agent Jim Prideaux. Control, chief of the Circus, had 
suspected that one of the five senior intelligence officers at the 
Circus was a Soviet mole, and had assigned them code names for Prideaux 
to relay back to the Circus, derived from the English children's 
rhyme "Tinker, Tailor".  Called out of retirement to settle the affairs 
of a friend, George Smiley finds his old organization, the Circus, so
overwhelmed by political considerations that it doesn't want to know 
what happened. 
He begins to follow up the clues of his friends past days, discovering that 
the clues lead to a high person in the Russian Secret Service, and a 
secret important enough to kill for. 
Smiley continues to put together the pieces a step ahead or a step behind 
Russian killers. 


*******************************************************************************/
#include <iostream>
#include <cctype>
#include <cstring>
#include <bits/stdc++.h>
using namespace std;
void GetC (char *ptr[]);
void DigitLine (char *ptr[]);
void PrintPtr (char *ptr[]);
void Swap (char *ptr[], int line1, int line2);
void Move (char *ptr[], int line1, int line2, int line3);
void Sort (char *ptr[]);

int main ()
{
  cout <<"------------------------------------------------------------------------------\n";
  cout << "Name: " << "Allan Yunayev" << endl;
  cout << "FILE: " << __FILE__ << " DATE: " << __DATE__ << endl;
  cout << "------------------------------------------------------------------------------\n";
  char Phrase[80];
  char another[80];
  char *ptr[25];
  for (int i = 0; i < 25; i++)
	{
	  cin.getline (Phrase, 80);
	  ptr[i] = new char[strlen (Phrase) + 1];
	  strcpy (ptr[i], Phrase);
	  cout << ptr[i] << endl;
	}
cout << "------------------------------------------------------------------------------\n";
  cout << "Get C" << endl;
    GetC(ptr);

cout << "------------------------------------------------------------------------------\n";
  cout << "DIGITS" << endl;
  DigitLine (ptr);

  cout << "------------------------------------------------------------------------------\n";
  cout << "Swapped" << endl;
  Swap (ptr, 3, 8);				// line 4 and line 9 
  PrintPtr (ptr);

  cout << "------------------------------------------------------------------------------\n";
  cout << "Moved" << endl;
  Move (ptr, 4, 6, 20);
  PrintPtr (ptr);

  cout << "------------------------------------------------------------------------------\n";
  cout << "Sort" << endl;  
  Sort(ptr);
  return 0;
}

void PrintPtr (char *ptr[]) {
  for (int i = 0; i < 25; i++)
	{
	  cout << ptr[i] << endl;
	}
}								// end printptr

void GetC(char* ptr[]){
    int j=0;
    bool check=false;
    char* temp;
    for(int i=0;i<25;i++){
        j=0;
        do{
            temp = ptr[i]+j;
            if(*temp== 'C'){
            check=true; break; }
            j++;
            if(*temp == '\0'){
                break;}
        }while(1);
        if(check==true){
            cout<<ptr[i]<<endl;
        }
        check=false;
    }
}


void DigitLine (char *ptr[]) {
  int j = 0;
  bool check = false;
  char *temp;
  for (int i = 0; i < 25; i++) {
	  j = 0;
	  do {
		  temp = ptr[i] + j;
		  if (isdigit (*temp))
			{
			  check = true;
			  break;
			}
		  j++;
		  if (*temp == '\0')
			{
			  break;
			}
		}
	  while (1);
	  if (check == true)
		{
		  cout << ptr[i] << endl;
		}
	  check = false;
	}
}

void Swap (char *ptr[], int line1, int line2) {
  char *temp = ptr[line1];
  ptr[line1] = ptr[line2];
  ptr[line2] = temp;
}


void Move (char *ptr[], int line1, int line2, int line3) {
  char temp[180];
  strcpy (temp, ptr[line1]);
  strcat (temp, ptr[line2]);
  char *mk = new char[strlen (temp) + 1];
  strcpy (mk, temp);

  if (ptr[line3] != nullptr)
	{
	  delete[]ptr[line3];
	}

  // Update ptr[line3]
  ptr[line3] = mk;
}// end move 

// Goal is to use ASCII to int and the smaller number go first so 
//null then caps, then lowercase letter for each line.
//put it the value into two array one for ascii int and one for what line int
void Sort(char* ptr[]){ 
int Ascii[25];
int line[25];
int j = 0;
 char *temp;
for(int i=0;i<25;i++){
    j=0;
        do{
     temp = ptr[i] + j;
     Ascii[i]=*temp;
     line[i]=i;
     break;
        }while(1);
}
// Pair sort 
int n=sizeof(Ascii)/sizeof(Ascii[0]);   
pair<int,int> Pair[n];
for(int i=0;i<n;i++){
    Pair[i].first= Ascii[i];
    Pair[i].second= line[i];
}
sort(Pair,Pair+n);
for(int i=0;i<n;i++){
 Ascii[i]=Pair[i].first;
 line[i]=Pair[i].second;
}
for(int i=0;i<25;i++){
    cout<<ptr[line[i]]<<endl;    
}
//end;
}



