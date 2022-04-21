package JavaWorkShop06_2;

public class Ltab extends Mobile {

	public Ltab() {
		// TODO Auto-generated constructor stub
	}

	public Ltab(String mobileName, int batterySize, String osType) {
		super(mobileName, batterySize, osType);
		// TODO Auto-generated constructor stub
	}

	@Override
	public int operate(int time) {
		// TODO Auto-generated method stub
		setBatterySize(getBatterySize()-(time*10));
		return getBatterySize();
	}

	@Override
	public int charge(int time) {
		// TODO Auto-generated method stub
		setBatterySize(getBatterySize()+(time*10));
		return getBatterySize();
	}
	
}
