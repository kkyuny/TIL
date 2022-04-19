package workshop_java;

import java.util.Scanner;

public class JavaWorkShop03_8 {
	public static void main(String[] args) {
				
		for (int i = 1; i<=100; i++) {
			
			if (i%3==0) {
				System.out.print(i + " foo");
				if (i%5==0) {
					System.out.print(" bar");
				}
				System.out.println();
			}
			else if (i%5==0) {
				System.out.println(i + " bar");
			}
			else if (i%7==0) {
				System.out.println(i + " baz");
			}
			else {
				System.out.println(i);
			}
		}
		
	}
}
