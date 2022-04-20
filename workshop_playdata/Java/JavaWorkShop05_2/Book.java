package JavaWorkShop05_2;

public class Book {
	private String bookName;
	private int bookPrice;
	private double bookDiscountRate;
	public Book() {
		// TODO Auto-generated constructor stub
	}
	public Book(String bookName, int bookPrice, double bookDiscountRate) {
		this.bookName = bookName;
		this.bookPrice = bookPrice;
		this.bookDiscountRate = bookDiscountRate;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public int getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}
	public double getBookDiscountRate() {
		return bookDiscountRate;
	}
	public void setBookDiscountRate(double bookDiscountRate) {
		this.bookDiscountRate = bookDiscountRate;
	}
	
	public double DiscountBookPrice() {
		return (double)(bookPrice * (100-bookDiscountRate)/100);
	}
	
	
}
