package JavaWorkShop06_2;

public class Otab extends Mobile {
	public Otab() {
		// TODO Auto-generated constructor stub
	}

	public Otab(String mobileName, int batterySize, String osType) {
		super(mobileName, batterySize, osType);
		// TODO Auto-generated constructor stub
	}

	@Override
	public int operate(int time) {
		// TODO Auto-generated method stub
		setBatterySize(getBatterySize()-(time*12));
		return getBatterySize();
	}

	@Override
	public int charge(int time) {
		// TODO Auto-generated method stub
		setBatterySize(getBatterySize()+(time*8));
		return getBatterySize();
	}
}
