package com.zhy.dao;

import java.util.List;

import com.zhy.beans.Order;
import com.zhy.beans.ShoppingCart;

public interface OrderDao {
	
	/**
	 * 根据用户姓名找到其订单
	 * @param username
	 * @return
	 * @throws Exception 
	 */
	public List<Order> getOrdersByUsername(String username) throws Exception;
	
	/**
	 * 添加订单
	 * @param shoppingCart
	 */
	public void add(ShoppingCart shoppingCart, String user) throws Exception;
}
