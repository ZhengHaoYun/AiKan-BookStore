package com.zhy.beans;

/**
 * 订单类
 *
 */
public class Order {
	private int id;
	private String name;
	private int price;
	private int quantity;
	private int total;
	private String user; // 购买的人

	public int getId() {
		return id;
	}

	public Order(int id, String name, int price, int quantity, int total, String user) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.total = total;
		this.user = user;
	}

	public Order(String name, int price, int quantity, int total, String user) {
		super();
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.total = total;
		this.user = user;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

}
