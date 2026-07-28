//Author: Allan Yunayev
//Class: CSC 22100
//VERSION: 1.0
//Date: 11/22/2024
package montecarlo;
import javax.swing.JPanel;
import java.awt.*;
import java.text.DecimalFormat;
import java.util.ArrayList;

public class Histogram extends JPanel {
final int TOP_MARGIN = 20;
final int BOTTOM_MARGIN = 20;
final int LEFT_MARGIN = 20;
final int RIGHT_MARGIN = 20;
// Declarations of instance variables:
// get array the min and max of the range 
private int[] Bin;
private double max;
private double min;
private int maxBinCount; 
private int binWidth;
private double range;
// constructor 
public Histogram(Simulation s) {
	setBackground(Color.WHITE);
	// Set values of instance variables ..
	ArrayList<Double> RandArray= s.getData();
	int numBins=s.getNumBins();
	int Randnums=s.getnumSize();
 	//s.generateNormalRandomNumbers(RandArray,Randnums);
	Bin = s.makeBins(RandArray, numBins);
	max=s.getMax(RandArray);
	min=s.getMin(RandArray);
	range=s.getRange(RandArray);
  //  binWidth= getWidth()/Bin.length;
	int i=Bin[0];
	for(int b: Bin) {
		if(b>i && maxBinCount<b) {
			maxBinCount=b;
		}
	}
}
// paintConponent draws the histogram
public void paintComponent(Graphics g) {
super.paintComponent(g);
drawXAxis(g);
drawYAxis(g);
drawBins(g);
drawXLabels(g);
drawYLabels(g);
}
// drawXAxis Draws the x-axis
private void drawXAxis(Graphics g) {
int x1 = LEFT_MARGIN;
int y1 = getHeight() - BOTTOM_MARGIN;
int x2 = getWidth() - RIGHT_MARGIN;
int y2 = y1;
g.drawLine(x1, y1, x2, y2);
}
// drawYAxis Draws the y-axis
private void drawYAxis(Graphics g) {
int x1 = LEFT_MARGIN;
int y1 = getHeight() - BOTTOM_MARGIN;
int x2 = x1;
int y2 = TOP_MARGIN;
g.drawLine(x1, y1, x2, y2);
}
// drawBins draws the bins
private void drawBins(Graphics g) {
	int counter=0;
	binWidth=getWidth()/Bin.length;
	int y;
	for(int b : Bin) {
// to get y we find the the we get the start of the x axis with getHeight and top margin subtract it with the scaler 
//this would be our start on our graph for example lets say we are at bin 23917 and max is 30608
// the ratio is .78 and if our height is 800-40= 760 then we have our start of x axis so if we were to do
// 0.78*(760)= 593 and now if we were to do y=(800-20)=780-593= 187 this is our y and our scaled y height bring 
// our y down by 593 pixel. our window start at (0,0) form the top left and (getWidth,getHeight) at the bottom right 
		y=(getHeight()-TOP_MARGIN-scaleY(b));
		g.setColor(Color.GRAY);
		g.fillRect(LEFT_MARGIN+(counter*binWidth), y, binWidth, scaleY(b) );
		// GET the BAR lines buy using draw and use dark gray and light gray
		g.setColor(Color.LIGHT_GRAY);
		g.drawRect(LEFT_MARGIN+(counter*binWidth)+1, y, binWidth, scaleY(b) );
		g.setColor(Color.DARK_GRAY);
		g.drawRect(LEFT_MARGIN+(counter*binWidth), y, binWidth, scaleY(b) );
		counter++;
	}
}
// drawXLabels draws the labels along the x-axis
private void drawXLabels(Graphics g) {
g.setColor(Color.BLACK);
DecimalFormat formatter = new DecimalFormat();
 formatter.setMinimumFractionDigits(2);
 formatter.setMaximumFractionDigits(2);

///  Sample code (which you may or may not choose to use)
double labelVal = min;
String label = formatter.format(labelVal);
int x = LEFT_MARGIN;
int y = getHeight() - BOTTOM_MARGIN + 12;
for (int b : Bin) {
g.drawString(label, x-12, y);
x += binWidth;
labelVal += range;//binSize;
label = formatter.format(labelVal);
}
g.drawString(label, x-12, y);
}

// drawYLabels draws the labels along the y-axis,
// i.e., draws the count of the bins on top of the bins
//Similar to drawXLables but y is based off bins array 
private void drawYLabels(Graphics g) {
g.setColor(Color.BLUE);
DecimalFormat formatter = new DecimalFormat("#,###");
// declare before going into loop.
double labelVal;
String label;
int x = LEFT_MARGIN+2; // added +2 for more spacing 
int y; 
for (int b : Bin) {
	// Same Y as DrawBins but add -2 to pick string higher
	y=(getHeight() - TOP_MARGIN-2- scaleY(b));
	labelVal =b;//binSize;
	label = formatter.format(labelVal);
	// removed x-12 to x due to it being inbetween each bin. 
	g.drawString(label, x, y);
	x += binWidth;
	}
}

private int scaleY(int b) {
	double ratio=((double)b / maxBinCount);
	// make a ratio with the bin[i]/ highest Bin and multiply with the height -top and bottom margin 
	// to fit in the x and y axis line. 
	int scale = (int) (ratio* (getHeight()-TOP_MARGIN-BOTTOM_MARGIN)) ;

	return (scale); 
}

}
