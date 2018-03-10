package org.denny.bean;

import java.io.Serializable;

public class Book implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String title ;
	private double price ;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(String title, double price) {
		super();
		this.title = title;
		this.price = price;
	}
	@Override
	public String toString() {
		return "图书名称:" + this.title + " | 图书价格:" + this.price ;
	}
}
