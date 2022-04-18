package workshop_java;

import java.util.Scanner;

public class JavaWorkShop02_14 {
	public static void main(String[] args) {
		
		String mesg = "100/200";
		
		System.out.println("정수값 합계: " + (Integer.parseInt(mesg.split("/")[0]) + Integer.parseInt(mesg.split("/")[1])));
	}
}


