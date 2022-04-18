package workshop_java;

import java.util.Scanner;

public class JavaWorkShop03_7 {
	public static void main(String[] args) {
		
		System.out.println("한 자리 정수값을 입력하시오");
		Scanner scan = new Scanner(System.in);
		int i = scan.nextInt();
		int sum = 0;
		for (int j = 1; j<=100; j++) {
			if (j%i==0) {
				sum += j;
			}
		}
		System.out.println(sum);
	}
}
