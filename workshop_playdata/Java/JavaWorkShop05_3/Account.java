package JavaWorkShop05_3;

public class Account {
	
	private String account;
	private int balance;
	private double interestRate;
	public Account() {
		// TODO Auto-generated constructor stub
	}
	public Account(String account, int balance, double interestRate) {
		this.account = account;
		this.balance = balance;
		this.interestRate = interestRate;
	}
	
	public double calculateInterest() {
		return balance * (100 + interestRate)/100;
	}
	public void deposit(int money) {
		this.balance += money;
	}
	public void withdraw(int money) {
		if (balance - money < 0) {
			System.out.println("출금 할 수 없습니다.");
		} else {
			this.balance -= money;
		}
		
	}
	
	
}
