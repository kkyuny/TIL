package workshop_java;

public class JavaWorkShop04_3 {
	public static void main(String[] args) {

		int[][] arrs = {
				{ 5, 5, 5, 5, 5},
				{10,10,10,10,10},
				{20,20,20,20,20},
				{30,30,30,30,30}
				};
		
		int sum = 0;
		int count = 0;
		for(int i = 0; i<arrs.length; i++) {
			for(int j = 0; j<arrs[i].length; j++) {
				sum += arrs[i][j];
				count+=1;
			}			
		}	
		System.out.println(sum);
		double avg = (sum / (double)count);
		System.out.println(avg);
		
	}
}
