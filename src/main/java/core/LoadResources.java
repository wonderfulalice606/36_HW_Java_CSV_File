package core;

import java.io.BufferedReader;
//import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class LoadResources {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
//		System.out.println(ClassLoader.getSystemResource("test.txt").getPath());
//		
//		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
//	    InputStream input =  classLoader.getResourceAsStream("test.txt");
//	    System.out.println(input.toString());
	   
		
	    InputStream in = Thread.currentThread().getContextClassLoader().getResourceAsStream("./test.txt");
	    BufferedReader reader=new BufferedReader(new InputStreamReader(in));
	    String line;
	    while((line=reader.readLine())!=null) {
	    		System.out.println(line);}

	}

}
