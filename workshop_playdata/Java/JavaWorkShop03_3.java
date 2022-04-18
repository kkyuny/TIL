package workshop_java;

public class JavaWorkShop03_3 {
	public static void main(String[] args) {
		int i = 1;		
		
		while(i<=10) {
			int j = 1;
			while(j <= i) {
			System.out.print("*");
			j += 1;
			}
			i += 1;
			System.out.println();
		} 
	}
}
