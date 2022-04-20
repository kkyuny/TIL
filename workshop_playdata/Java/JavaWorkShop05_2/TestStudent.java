package JavaWorkShop05_2;

public class TestStudent {
	public static void main(String[] args) {

		Book book1 = new Book("책1", 50000, 5.0);
		Book book2 = new Book("책2", 40000, 3.0);
		Book book3 = new Book("책3", 60000, 6.0);
		
		System.out.println(book1.DiscountBookPrice());
		System.out.println(book2.DiscountBookPrice());
		System.out.println(book3.DiscountBookPrice());
		
	}
}
