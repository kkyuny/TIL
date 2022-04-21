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

// 자바에서 String에 순차적으로 접근하기 위해서는 .toCharArray()라는 함수를 사용하여 char[] 형으로 변환 후 접근할 수 있다.
