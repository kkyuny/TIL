package JavaWorkShop05_3;

public class TestStudent {
	public static void main(String[] args) {

		Account acc1 = new Account("계좌1", 50000, 5.0);
		Account acc2 = new Account("계좌2", 40000, 3.0);
		Account acc3 = new Account("계좌3", 60000, 6.0);
		
		acc1.deposit(20000);
		acc1.withdraw(100000);
		System.out.println(acc1.calculateInterest());
		
	}
}
