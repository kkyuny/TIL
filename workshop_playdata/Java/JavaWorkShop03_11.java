package workshop_java;

import java.util.Scanner;

public class JavaWorkShop03_11 {
	public static void main(String[] args) {
				
		Scanner scan = new Scanner(System.in);
		int a = 2;
		int b = 1;
				
		while (a>b) {
			a = scan.nextInt();
			b = scan.nextInt();
			System.out.println("a 값:" + a);
			System.out.println("b 값:" + b);
			if (a>b) {
				System.out.println("b의 값은 a보다 크게 입력하세요!");
				b = scan.nextInt();
				System.out.println("b 값:" + b);
				break;
			}
			else {
				break;
			}
		}
		System.out.println("b - a는 " + (b-a) + "입니다.");
	}
}

