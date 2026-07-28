package Benford;
//Author: ALLAN YUNAYEV 
//Class: CSC22100 
//ASSIGNMENT 1
//DATE:10/13/2024
//Version 1.0 

import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;
public class Benford {
	
//GO To take each input data of numbers -1 - 1 and find the first significant digit
// and see if it follows benfords law and plot it as a histogram 
	public static String stars(double numbers) {
		String allStars="";
		for(int i=0;i<=(int)numbers;i++) {
			allStars+='*';
		}
		return allStars;
	}
	
	
	
	public static void main(String[] args) {
	int totalCount=0;
	int[] benford=new int[9];
	
try {
      File myObj = new File("src/data.txt");
      Scanner myReader = new Scanner(myObj);
      while (myReader.hasNextLine()) {	
    	  String first = myReader.nextLine();// first represent the number that it is on
    	  totalCount++; //used for getting the percentage
    	  //To find the first significant digit
    	  int i=0;
    	  while((first.charAt(i) == '0'||first.charAt(i) == '.'||first.charAt(i) == '-')){
    	       if(first.length()==1){
    	           break;// if zero end
    	       }
    	       i++;
    	    }//end while 
    	   if(first.charAt(i) != '0'){// IF zero don't add brings error if zero is kept in 
    	   int transform=Character.getNumericValue(first.charAt(i));
    	    benford[transform-1]++;
    	    }//end if 
	      }// END reader 
	      myReader.close();
      } //end try
	catch (FileNotFoundException e) {
	       System.out.println("An error occurred.");
	       e.printStackTrace();
	       }   // end catch
		
	double percent;
	for(int j=0;j<benford.length;j++) {
		percent=((double)benford[j]/(double)totalCount)*100;
		System.out.printf("%d (%.3f%%)	: %s\n",j+1,percent,stars(percent));
		}//end loop
	}//end main
}// end class
