package com.zhy.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.zhy.beans.CartItem;
import com.zhy.beans.Order;
import com.zhy.beans.ShoppingCart;
import com.zhy.dao.OrderDao;
import com.zhy.tools.DBUtil;

public class OrderDaoImp implements OrderDao {

	@Override
	public List<Order> getOrdersByUsername(String username) throws Exception {
		Order order = null;
		List<Order> orders = new ArrayList<>();
		Connection connection = DBUtil.getConnection();
		String sql = "SELECT * from orders where user ='" + username + "'";

		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		ResultSet resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			order = new Order(resultSet.getInt(1), resultSet.getString(2), resultSet.getInt(3), resultSet.getInt(4),
					resultSet.getInt(5), resultSet.getString(6));
			orders.add(order);
		}
		try {
			DBUtil.close(resultSet, preparedStatement, connection);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orders;
	}

	@Override
	public void add(ShoppingCart shoppingCart, String user) throws Exception {
		List<Order> orders = new ArrayList<>();
		Order order = null;
		for (CartItem cartItem : shoppingCart.getCartItems()) {
			order = new Order(cartItem.getBook().getName(), cartItem.getBook().getPrice(), cartItem.getQuantity(),
					(int) cartItem.getSubtotalPrice(), user);
			orders.add(order);
		}
		String sql = null;
		Connection connection = DBUtil.getConnection();
		PreparedStatement preparedStatement = null;
		for (Order order2 : orders) {
			sql = "insert orders (name, price, quantity, total, user)" + "value(?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, order2.getName());
			preparedStatement.setInt(2, order2.getPrice());
			preparedStatement.setInt(3, order2.getQuantity());
			preparedStatement.setInt(4, order2.getTotal());
			preparedStatement.setString(5, order2.getUser());
			preparedStatement.execute();
		}

		DBUtil.close(preparedStatement, connection);

	}

	public static void main(String[] args) throws Exception {
		OrderDao orderDao = new OrderDaoImp();
		System.out.println(orderDao.getOrdersByUsername("1@qq.com"));
	}
}
