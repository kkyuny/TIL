package workshop_java;

import java.util.Scanner;

public class JavaWorkShop02_10 {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("주소를 입력하시오");
		String addr1 = scan.nextLine();
		String addr2 = scan.next();
		String addr3 = scan.next();		
		// 한 줄로 모든 값을 입력받게 되면 nextLine() 대신 next()를 사용한다.
		// next(): 스페이스를 기준으로 split 된다.
		// nextLine(): 엔터 값 입력 전까지 입력된 문장이 입력된다.
		// String 외의 입력은 상관이 없다.
		System.out.println("도명: " + addr1);
		System.out.println("시명: " + addr2);
		System.out.println("구명: " + addr3);
		
	}
}

