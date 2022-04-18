package workshop_java;

import java.util.Random;

public class JavaWorkShop03_5 {
	public static void main(String[] args) {
				
		//java.util.Random
		Random rand = new Random();
		
		System.out.println(rand.nextInt(7));
		
		int value = (int)(Math.random()*6)+1;
		System.out.println(value);
	}
}
