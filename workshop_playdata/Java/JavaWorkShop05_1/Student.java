package JavaWorkShop05_1;

public class Student {
	private String name;
	private int korean;
	private int english;
	private int math;
	private int science;
	public Student(String name, int korean, int english, int math, int science) {
		this.name = name;
		this.korean = korean;
		this.english = english;
		this.math = math;
		this.science = science;
	}
	public Student() {
		// TODO Auto-generated constructor stub
	}
	
	public double getAvg() {
		return (double)(this.korean + this.english + this.math + this.science)/4;
	}
	public String getGrade() {
		double d = this.getAvg();
		if (d>=90) {
			return "A";
		} else if(d>=80) {
			return "B";
		} else {
			return "C";
		}		
	}
	
	
	
}
