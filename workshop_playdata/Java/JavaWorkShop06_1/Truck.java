package JavaWorkShop06_1;

public class Truck extends Car {

	public Truck() {
		// TODO Auto-generated constructor stub
	}
	
	public double getEfficiency() {
		return super.getEfficiency() - ((getCurWeight()/5)*0.2);
	}
	public void moving(int distance) {
		setRestOil(getRestOil()-calcOil(distance));
	}
	public double calcOil(int distance) {
		return distance/getEfficiency();
	}
	public int getCost(int distance) {
		return (int)(calcOil(distance)*3000);
	}
	
	public Truck(double restOil, int curWeight) {
		super(restOil, curWeight);
		// TODO Auto-generated constructor stub
	}

	public Truck(int maxWeight, double oilTankSize, double efficiency) {
		super(maxWeight, oilTankSize, efficiency);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Truck []";
	}
	
}
