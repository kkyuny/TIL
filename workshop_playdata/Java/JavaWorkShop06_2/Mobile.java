package JavaWorkShop06_2;

public abstract class Mobile {
	private String mobileName;
	private int batterySize;
	private String osType;	
	
	public int operate(int time) {
		return 0;
	}
	public int charge(int time) {
		return 0;
	}
	
	
	public Mobile() {
		// TODO Auto-generated constructor stub
	}
	public Mobile(String mobileName, int batterySize, String osType) {
		this.mobileName = mobileName;
		this.batterySize = batterySize;
		this.osType = osType;
	}
	public String getMobileName() {
		return mobileName;
	}
	public void setMobileName(String mobileName) {
		this.mobileName = mobileName;
	}
	public int getBatterySize() {
		return batterySize;
	}
	public void setBatterySize(int batterySize) {
		this.batterySize = batterySize;
	}
	public String getOsType() {
		return osType;
	}
	public void setOsType(String osType) {
		this.osType = osType;
	}
	
	
}
