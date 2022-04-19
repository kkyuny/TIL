package workshop_java;

import java.util.Scanner;

public class JavaWorkShop03_12 {
	public static void main(String[] args) {
				
		Scanner scan = new Scanner(System.in);
		
		int a = scan.nextInt();
		System.out.println("정수값: " + a);
				
		while (a<0) {
				a = scan.nextInt();
				System.out.println("정수값: " + a);
			}
		int count = 0;
		while (a>0) {
			count += 1;
			a /= 10;
		}
		System.out.println("그 수는 "+ count + "자리입니다.");
		
	}
}

