package JavaWorkShop05_1;

public class TestStudent {
	public static void main(String[] args) {

		Student stu1 = new Student("학생1", 80, 90, 90 ,95);
		Student stu2 = new Student("학생2", 90, 90, 90 ,95);
		Student stu3 = new Student("학생3", 80, 90, 70 ,95);
		
		System.out.println(stu1.getAvg() + " " + stu1.getGrade());
		System.out.println(stu2.getAvg() + " " + stu2.getGrade());
		System.out.println(stu3.getAvg() + " " + stu3.getGrade());
	}
}
