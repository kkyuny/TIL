package workshop_java;

public class JavaWorkShop04_2 {
	public static void main(String[] args) {

		int[] arrs = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
		int sum = 0;
		for(int i = 0; i<arrs.length; i++) {
			if(i%2!=0) {
				sum+= arrs[i];
			}		
		}	
		System.out.println(sum);
		
	}
}
