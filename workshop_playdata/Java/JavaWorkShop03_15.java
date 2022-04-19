package workshop_java;

import java.util.Scanner;

public class JavaWorkShop03_15 {
	public static void main(String[] args) {
				
		Scanner scan = new Scanner(System.in);
		System.out.println("왼쪽 아래가 직각인 이등변 삼각형을 출력합니다.");
		System.out.println("몇 단 삼각형입니까?");
		int a = scan.nextInt();
		for (int i = 1; i<=a; i++) {
			for (int j=0; j<i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		
		
		
	}
}

