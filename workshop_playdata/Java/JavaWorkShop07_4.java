package JavaWorkShop07_4;

public class StringTest01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String strs = "I am second to none";
		char[] arrs1 = strs.toCharArray();
		String[] arrs2 = strs.split(" ");
		
		System.out.println(arrs2.length);
		
		int count = 0;
		char[] chars = {};
		for (char arrs : arrs1) {
			if (arrs != ' ') {
				count += 1;
			}			
		}
		System.out.println(count);
	}


}
