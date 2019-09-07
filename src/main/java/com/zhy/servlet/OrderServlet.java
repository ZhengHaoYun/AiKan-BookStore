package com.zhy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhy.beans.Book;
import com.zhy.beans.CartItem;
import com.zhy.beans.ShoppingCart;
import com.zhy.beans.User;
import com.zhy.factory.DaoFactory;

@WebServlet("/OrderServlet")
public class OrderServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	public void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, NumberFormatException, SQLException {
		User user = (User) request.getSession().getAttribute("user");
		ShoppingCart shoppingCart = (ShoppingCart) request.getSession().getAttribute("shoppingCart");
		List<CartItem> items = new ArrayList<CartItem> (shoppingCart.getCartItems());

		for (CartItem item : items) {
			int stock = item.getBook().getStock() - item.getQuantity();
			Book book = item.getBook();
			book.setStock(stock);
			DaoFactory.getBookDao().updateBook(book);
		}

		try {
			DaoFactory.getOrderDao().add(shoppingCart, user.getUsername());
		} catch (Exception e) {
			e.printStackTrace();
		}
		shoppingCart.clear();
		response.sendRedirect(request.getContextPath() + "/buySuccess.jsp");

	}
}
