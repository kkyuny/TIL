package workshop_java;

public class JavaWorkShop02_5 {
	public static void main(String[] args) {
		
		byte a = 10;
		byte b = 20;
		System.out.println(a + b);
		byte c = (byte) (a + b);
    //byte 연산 후에는 다시 형 변환이 필요한 것 같다.
    
		char ch = 'A';
		ch = (char)(ch + 2);
    //아스키코드 연산 후의 결과 값을 char로 형 변환을 하면 문자로 돌아간다.
		float f = 3 / 2.0f;
		long l = 27000000000L;
		float f2 = 0.1f;
		double d = 0.1;
		boolean result = (float)d == f2;
		System.out.println("c="+c);
		System.out.println("ch="+ch);
		
		System.out.println("f="+f);
		System.out.println("l="+l);
		System.out.println("result="+result);
	}
}
