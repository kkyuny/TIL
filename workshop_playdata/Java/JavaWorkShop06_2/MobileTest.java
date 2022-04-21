package JavaWorkShop06_2;

public class MobileTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Ltab ltab = new Ltab("Ltab", 500, "AP-01");
		Otab otab = new Otab("Otab", 1000, "AND-20");
		
		System.out.println(ltab.charge(10));
		System.out.println(otab.charge(10));
		
		System.out.println(ltab.operate(5));
		System.out.println(otab.operate(5));
	}

}
