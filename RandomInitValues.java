import java.util.*;
import java.io.*;

/**
 * @author Liu Qi
 * Created on 28-Oct-2004
 * To generate a VAL file containing initial cell values for a r*c cell space.
 * Each cell may have value from 0 to max_StateVal. 
 * All these integer values are produced with approximately equal probability.
 */

public class RandomInitValues {

	public static void main(String[] args) {
		if((args.length == 0) || (args[0].equalsIgnoreCase("-?")) || (args[0].equalsIgnoreCase("-h")) ){
			System.out.println("Please input parameters you want to use!");
			System.out.println();
			System.out.println("    Usage:  java RandomInitValues val_filename max_StateVal rows cols");
			System.out.println();
			System.out.println("                 val_filename : the VAL file to which you want to save initial cell state values;");
			System.out.println("                 max_StateVal : the maximum possible state value for a cell, the minimal possible state value is always 0!");
			System.out.println("                 rows         : the number of rows for the cell space;");
			System.out.println("                 cols         : the number of columns for the cell space;");
			System.out.println();
			System.out.println("    Example: java RandomInitValues Test.VAL 2 50 50");
			System.out.println("    This will generate a Test.VAL file containing cell initial velues for a 50*50 cell space. ");
			System.out.println("    Each cell may have value of 0, 1, or 2. All these integer values are produced with approximately equal probability.");
			System.out.println();
			System.out.println("Type -? or -h to show this message.");
			System.exit(0);
		}
		
		PrintWriter w = null;
		
		try{
		    String filename = args[0];
		    int value = Integer.parseInt(args[1])+1;
		    int rows = Integer.parseInt(args[2]);
		    int cols = Integer.parseInt(args[3]);
		
		    System.out.println("The VAL file name you input is : " + filename);
		    long time = System.currentTimeMillis();
		
			String line = new String();
			Random ran = new Random();
			
			FileWriter fw = new FileWriter(filename, true);
			BufferedWriter bw = new BufferedWriter(fw);
			w = new PrintWriter(bw, true);
			
			for (int r = 0; r < rows; r++){//row index
				for(int c = 0; c < cols; c++){ //col index
			        line = "(" + r + "," + c + ") = " + ran.nextInt(value);
			        w.println(line);
				}
			}
			time = (System.currentTimeMillis() - time)/1000;
			System.out.println(filename + " is created in " + time + " seconds.");
		}catch(IOException ioe){
			System.out.println("IO Exception!"); 
		}catch(Exception e){
		    System.out.println("Exception!");
		    e.printStackTrace();
		}finally{
		    if(w != null){		        
		        w.close();
		    }
		}
	}
}
