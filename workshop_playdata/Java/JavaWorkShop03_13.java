package workshop_java;

import java.util.Scanner;

public class JavaWorkShop03_13 {
	public static void main(String[] args) {
				
		Scanner scan = new Scanner(System.in);
		
		System.out.println("2자리 정수를 입력하세요.");
		
		while(true) {
			int a = scan.nextInt();
			System.out.println("입력: "+a);
			int count = 0;
			int b = a;
			while (b>0) {
				count += 1;
				b /= 10;
			}
			if (count != 2 || a<0) {
				continue;
			}
			else {
				System.out.println("입력값은 "+a);
				break;
			}
			
		}
		
	}
}

