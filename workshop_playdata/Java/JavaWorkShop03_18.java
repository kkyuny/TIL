package workshop_java;

import java.util.Scanner;

public class JavaWorkShop03_18 {
	public static void main(String[] args) {
				
		Scanner scan = new Scanner(System.in);
		System.out.println("오른쪽 아래가 직각인 이등변 삼각형을 출력합니다.");
		System.out.println("몇 단 삼각형입니까?");
		int a = scan.nextInt();
		for (int i = 0; i<a; i++) {
			for (int k = a-1; k > i; k--) {
				System.out.print(" ");
			}
			for (int j=0; j<=i; j++) {
				System.out.print("*");
			}			
			System.out.println();
		}
		
		
	}
}

