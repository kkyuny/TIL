package workshop_java;

import java.util.Scanner;

public class JavaWorkShop03_10 {
	public static void main(String[] args) {
				
		Scanner scan = new Scanner(System.in);
		int i = 0;
		while (i <= 0) {
			i = scan.nextInt();
			System.out.println("n 값:" + i);
		}
		int sum = 0;
		for (int j=1; j<=i; j++) {
			sum += j;
		}
		System.out.println("1부터 "+ i + "까지의 총합: "+ sum);
		
		
		
	}
}

