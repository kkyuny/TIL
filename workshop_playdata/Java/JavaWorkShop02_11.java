package workshop_java;

import java.util.Scanner;

public class JavaWorkShop02_11 {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("주소를 입력하시오");
		String addr1 = scan.nextLine();
		

		System.out.println("문자 갯수(공백 포함): " + addr1.length());
		System.out.println("단어 갯수: " + addr1.split(" ").length);
		// 왜 length()가 아니고 length를 사용해야 하는지 모르겠다.
		
	}
}

