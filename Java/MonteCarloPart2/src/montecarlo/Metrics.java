//Author: Allan Yunayev
//Class: CSC 22100
//VERSION: 1.0
//Date: 11/3/2024
//NO CHANGE
package montecarlo;
import java.util.ArrayList;
public class Metrics {

	public static double verifyDistribution( ArrayList<Double> Array , double mean, double std, double NumStd) {
		int RangeTotal=0;
		double lower= mean -(std*NumStd);
		double higher= mean + (std*NumStd);
		for(int i=0;i<Array.size();i++) {
			double num=Array.get(i);
			if( lower <= num && num <= higher ){
				RangeTotal++;
			}//end if 
		}//end for loop
		double percentage= (double) RangeTotal *100/ Array.size();
		return percentage;
	}//end verifyDistribution

}
