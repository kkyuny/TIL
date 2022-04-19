package workshop_java;

import java.util.Scanner;

public class JavaWorkShop03_16 {
	public static void main(String[] args) {
				
		Scanner scan = new Scanner(System.in);
		System.out.println("왼쪽 위가 직각인 이등변 삼각형을 출력합니다.");
		System.out.println("몇 단 삼각형입니까?");
		int a = scan.nextInt();
		for (int i = a; i>0; i--) {
			for (int j=i; j>0; j--) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		
	}
}

