//Author: Allan Yunayev
//Class: CSC 22100
//VERSION: 2.0
//Date: 11/22/2024
// ADDED HISTOGRAM adn also change sim with added constuctor for saving data for Histogram
package montecarlo;
import java.util.ArrayList;

import javax.swing.*;
import java.io.FileWriter;
import java.io.IOException;
public class MonteCarlo {

	public static void main(String[] args) {
		ArrayList<Double> RandArray= new ArrayList();
		int bins=11;
		int RandNums=100000;
		Simulation sim = new Simulation(RandArray,bins,RandNums);
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
		
		Histogram h = new Histogram(sim);
		JFrame visuals = new JFrame();
		visuals.setTitle("CSc 221 Histogram");
		visuals.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		visuals.add(h);
		visuals.setSize(1200, 800);
		visuals.setVisible(true);

		
	}//end main

}//end MonteCarlo
