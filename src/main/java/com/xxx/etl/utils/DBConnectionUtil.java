package com.xxx.etl.utils;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

/**
 * @className   类名 : DBConnectionUtil
 * @description 作用 : 数据库连接测试
 * @author  作者 : Lilg
 * @date 创建时间 : 2018年2月1日 上午10:51:54 
 * @version 版本 : V1.0
 */
public class DBConnectionUtil {

	/**
	 * 此方法描述的是： 数据库连接测试
	 * 
	 * @author: Lilg
	 * @version: V1.0
	 * @throws Exception 
	 */
	public static Connection getConnection(String driver, String url, String name, String pwd) throws Exception {
		// 获取mysql数据库的驱动类
		// 连接数据库（kucun是数据库名）
		// 连接mysql的用户名
		// 连接mysql的密码
		Class.forName(driver);
		Connection conn = (Connection) DriverManager.getConnection(url, name, pwd);// 获取连接对象
		return conn;
	}

	/**
	 * 此方法描述的是：关闭测试连接
	 * 
	 * @author: Lilg
	 * @version: V1.0
	 */
	public static void closeAll(Connection conn) {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
