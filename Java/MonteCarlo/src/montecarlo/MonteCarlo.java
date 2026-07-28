//Author: Allan Yunayev
//Class: CSC 22100
//VERSION: 1.0
//Date: 11/3/2024
package montecarlo;
import java.util.ArrayList;
import java.io.FileWriter;
import java.io.IOException;
public class MonteCarlo {

	public static void main(String[] args) {
		ArrayList<Double> RandArray= new ArrayList();
		int bins=11;
		int RandNums=100000;
		Simulation sim = new Simulation();
		sim.generateNormalRandomNumbers(RandArray,RandNums);
		int[] Bin = sim.makeBins(RandArray, bins);
		
		try(FileWriter myWriter = new FileWriter("src/Gauss.txt")) {
			for(int num:Bin) {
				System.out.println(num);
				 myWriter.write(num + "\n");
			}myWriter.close();
		} catch (IOException e) {
		      System.out.println("An error occurred.");
		      e.printStackTrace();
			}
		
		System.out.println("------------------------- verifyDistribution()");
		System.out.println("verifyDistribution(0.0,1.0,1.0) is "+Metrics.verifyDistribution(RandArray,0.0,1.0,1.0)+"%");
		System.out.println("verifyDistribution(0.0,1.0,2.0) is "+Metrics.verifyDistribution(RandArray,0.0,1.0,2.0)+"%");
		System.out.println("verifyDistribution(0.0,1.0,3.0) is "+Metrics.verifyDistribution(RandArray,0.0,1.0,3.0)+"%");
	}//end main

}//end MonteCarlo
