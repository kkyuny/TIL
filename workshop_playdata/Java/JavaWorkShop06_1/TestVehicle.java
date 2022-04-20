package JavaWorkShop06_1;

public class TestVehicle {
	public static void main(String[] args) {

		Truck truck = new Truck(1000, 100, 5.0);
		
		truck.addOil(50);
		truck.moving(50);
		truck.addWeight(100);
		truck.moving(30);
		
		System.out.println(truck.getCost(50));
		
	}
}
