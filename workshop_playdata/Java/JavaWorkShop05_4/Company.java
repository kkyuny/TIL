package JavaWorkShop05_4;

public class Company {
	
	private double salary;
	private double afterTaxIncome = 0.1;
	private double afterTaxBonus = 0.055;
	private double bonus;
	private double income;	
	
	public Company() {
		// TODO Auto-generated constructor stub
	}
	public Company(double salary, double bonus) {
		this.salary = salary;				
		this.bonus = bonus;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public double getIncome() {
		return salary*(1-afterTaxIncome) + bonus*(1-afterTaxBonus);
	}
	public void setIncome(double income) {
		this.income = income;
	}
	public double getAfterTaxIncome() {
		return afterTaxIncome;
	}
	public void setAfterTaxIncome(double afterTaxIncome) {
		this.afterTaxIncome = afterTaxIncome;
	}
	public double getAfterTaxBonus() {
		return afterTaxBonus;
	}
	public void setAfterTaxBonus(double afterTaxBonus) {
		this.afterTaxBonus = afterTaxBonus;
	}
	public double getBonus() {
		return bonus;
	}
	public void setBonus(double bonus) {
		this.bonus = bonus;
	}
	
	
	
}
