package org.denny.dynamictag.vo;

public class Book {
	private String name ;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	private double price ;
	public Book(String name, double price) {
		super();
		this.name = name;
		this.price = price;
	}
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "图书名:" + this.name + " | 价格:" + this.price ;
	}
}
