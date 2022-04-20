package JavaWorkShop06_1;

public class Car extends Vehicle {
	private double restOil;
	private int curWeight;
	
	public void addOil(int oil) {
		if (oil + this.restOil <= getOilTankSize())
			this.restOil += oil;
	}
	public void moving(int distance) {
		this.restOil -= (distance/getEfficiency()); 
	}
	public void addWeight(int weight) {
		if(weight + curWeight <= getMaxWeight())
			this.curWeight += weight;
	}
	public double getRestOil() {
		return restOil;
	}
	public void setRestOil(double restOil) {
		this.restOil = restOil;
	}
	public int getCurWeight() {
		return curWeight;
	}
	public void setCurWeight(int curWeight) {
		this.curWeight = curWeight;
	}
	
	
	public Car(double restOil, int curWeight) {
		this.restOil = restOil;
		this.curWeight = curWeight;
	}
	public Car() {
		// TODO Auto-generated constructor stub
	}
	public Car(int maxWeight, double oilTankSize, double efficiency) {
		super(maxWeight, oilTankSize, efficiency);
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Car [restOil=" + restOil + ", curWeight=" + curWeight + "]";
	}
	
	
}
