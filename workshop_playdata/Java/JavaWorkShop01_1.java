package workshop_java;

public class JavaWorkShop01_1 {
	public static void main(String[] args) {
		String name = "홍길동";
		int age = 20;
		String address = "서울";
		System.out.println("이름은 " + name);
		System.out.println("나이는 " + age + "이고 주소는 " + address);

		System.out.print("이름은 " + name + "\n");
		System.out.print("나이는 " + age + "이고 주소는 " + address + "\n");
		
		System.out.printf("이름은 %s\n", name);
		System.out.printf("나이는 %d 주소는 %s", age, address);
	}
}
