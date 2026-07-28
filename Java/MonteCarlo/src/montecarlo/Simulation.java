//Author: Allan Yunayev
//Class: CSC 22100
//VERSION: 1.0
//Date: 11/3/2024
package montecarlo;
import java.util.ArrayList;
import java.util.Random;
public class Simulation {
	public void generateNormalRandomNumbers(ArrayList<Double> Array, int ArraySize) {
		// our goal is add int amount of random.nextGaussians number to the ArrayList
		Random Guass= new Random();// create Random calss Guass
		for(int i=0;i<ArraySize;i++) { //add the Normal Random numbers in the array Numbers times.
			Array.add(Guass.nextGaussian());
		}// end 
	}// end funciton 
	
	public double getMin(ArrayList<Double> Array) {
		 // we want to compare the sential of Max double with the smallest value in array and find 
			//smallest element in the array and return it 
				double Min= Double.MAX_VALUE;
			 for(double num: Array) {
				 if( num <= Min) {
					 Min=num;
				 }//end if
			 }//end loop
			 return Min;
		}//end function 
		
		
		public double getMax(ArrayList<Double> Array) {
			 // we want to compare the sential of min double with the largest value in array and find 
				//largest element in the array and return it
				double Max= Double.MIN_VALUE;
			 for(double num:Array) {
				 if(num >= Max) {
					 Max=num;
				 }//end if
			 }//end loop
			 return Max;
			}//end function 
		//we realistally don't need range as it we can just in make bin and also 
		//it doesnt make sense for it when we need the binsize to make the real range
		public double getRange(ArrayList<Double> Array) {
			return getMax(Array)-getMin(Array);
		}//end get range
	public int[] makeBins(ArrayList<Double> Array , int BinSize) {
		// Make sure the size of array is more than 1
			//to get our range we must divide the BinSize with the size of the array
			int[] Bins = new int[BinSize]; 
			double Min = getMin(Array);
			double Max = getMax(Array);
			double range= (double) (Max-Min)/BinSize;
			// we are going to order the array in the bins by two if statement
			//going to the Array and putting in which bin in the range of GetMin<Array.get(i)<GetMin+n*range
			for(double num:Array) {
				Bins[getBins(num,BinSize,Min,Max)]++;
			}//end for loop i
		return Bins;
	}// end function
	
	public int getBins(double NormRand, double BinSize,double Min,double Max ) {
		int Bin=0;
		double range= (double) (Max-Min)/BinSize;
		for(int j =0;j<BinSize;j++) {
			if(j != BinSize-1) {
					if( Min + (j*range) <= NormRand&&  NormRand < Min+ ((j+1)*range) ){
						Bin=j;
						break;
					}//edn inner if in else
			}//end if (j != BinSize-1)
			else {
				if( Min + ((j-1)*range) <= NormRand&&  NormRand <= Max){
					// have to do this instead of implemening max but should work fine 
					Bin=j;
					break;
				}//edn inner if in else 
			}// end else for j != Binsize-1
		}//end for loop for j
		return Bin;
	}//end function getBins

}// SIMULATION CLASS
