package workshop_java;

import java.util.Scanner;

public class JavaWorkShop02_9 {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("1. 정수를 입력하세요.");
		int num1 = scan.nextInt();
		
		System.out.println("2. 정수를 입력하세요.");
		int num2 = scan.nextInt();
		
		int result = (num1>num2)? num1 : num2;
		System.out.println("정수 " + num1 + "과 정수 " + num2 + " 중에서 최대값: " + result);
		
	}
}
