package workshop_java;

import java.util.Scanner;

public class JavaWorkShop03_19 {
	public static void main(String[] args) {
				
		Scanner scan = new Scanner(System.in);
		System.out.println("피라미드 모양 삼각형");
		System.out.println("몇 단 삼각형입니까?");
		int a = scan.nextInt();
		for (int i = 0; i<a; i++) {
			for (int k = a-1; k > i; k--) {
				System.out.print(" ");
			}
			for (int j=0; j<=i*2; j++) {
				System.out.print("*");
			}			
			System.out.println();
		}
		
		
	}
}

