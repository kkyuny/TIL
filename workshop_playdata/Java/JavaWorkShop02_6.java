package workshop_java;

public class JavaWorkShop02_6 {
	public static void main(String[] args) {
		
		int i = 5;
		String result = (i%2!=0)? "홀수" : "짝수";
		//자바의 3항 연산..
    
		System.out.println("선언 변수 "+ i +"일 때 결과:" );
		System.out.println("숫자 "+ i +"는 " + result + "입니다." );
	}
}
