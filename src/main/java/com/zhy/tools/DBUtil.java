package com.zhy.tools;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DBUtil {
	private static String user;
	private static String password;
	private static String url;
	private static String driver;
	
	static {
		try {
			ClassLoader classLoader = DBUtil.class.getClassLoader();
			InputStream is = classLoader.getResourceAsStream("jdbc.properties");
			Properties props = new Properties();
			props.load(is);
			url = props.getProperty("url");
			user = props.getProperty("user");
			password = props.getProperty("password");
			driver = props.getProperty("driver");
			// 注册驱动
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new RuntimeException("找不到驱动");
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("加载properites文件错误");
		}
	}

	/**
	 * 获取数据库连接
	 * @return
	 * @throws Exception
	 */
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url, user, password);
	}
	
	/**
	 * 关闭数据库连接，包括结果集。
	 * @param rs
	 * @param stat
	 * @param conn
	 * @throws Exception
	 */
	public static void close(ResultSet rs, Statement stat, Connection conn)
			throws Exception {
		if (rs != null) {
			rs.close();
		}
		if (stat != null) {
			stat.close();
		}
		if (conn != null) {
			conn.close();
		}
	}
	


	/**
	 * 关闭数据库连接，无结果集。
	 * @param stat
	 * @param conn
	 * @throws Exception
	 */
	public static void close(Statement stat, Connection conn) throws Exception {
		if (stat != null) {
			stat.close();
		}
		if (conn != null) {
			conn.close();
		}
	}

//	public static void main(String[] args) {
//		try {
//			System.out.println(DBUtil.getConnection());
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}

}
