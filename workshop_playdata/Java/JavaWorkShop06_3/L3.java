package JavaWorkShop06_3;

public class L3 extends Car implements Temp {

	@Override
	public int getTempGage() {
		// TODO Auto-generated method stub
		return getDistance()/10;
	}
	
	@Override
	public void go(int distance) {
		this.setOilSize(getOilSize() - distance/10);
		this.setDistance(getDistance() + distance);
	}
	
	@Override
	public void setOil(int oilSize) {
		this.setOilSize(getOilSize() + oilSize);
	}

	public L3() {
		// TODO Auto-generated constructor stub
	}

	public L3(String name, String engine, int oilTank, int oilSize, int distance) {
		super(name, engine, oilTank, oilSize, distance);
		// TODO Auto-generated constructor stub
	}
	

}
