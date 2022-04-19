package workshop_java;

import java.util.Scanner;

public class JavaWorkShop03_9 {
	public static void main(String[] args) {
				
		Scanner scan = new Scanner(System.in);
		int a = scan.nextInt();
		int b = scan.nextInt();
		int c = scan.nextInt();
		
		int max = (a>b)? ((a>c)? a:c) : ((b>c)? b:c);
		System.out.println("최대값: "+max);
		
		
	}
}

