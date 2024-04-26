package dao.impl;

 

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import  connection.connectDB;
import dao.AdminDashboard;

public class AdminDashboarDao extends connectDB implements AdminDashboard{
	Connection conn =null;
	PreparedStatement ps =null;
	ResultSet rs = null;

	@Override
	public int getOrderByDay() {
		String query ="select count(id) from transactions where (convert(created, date)) = curdate()";
		try {
			conn = new connectDB().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	@Override
	public int getProductByDay() {
		String query ="select count(product_id) from transactions inner join ordered on transactions.id = ordered.transaction_id where convert(created,date)=curdate()";
		try {
			conn = new connectDB().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	@Override
	public int getPriceByDay() {
		String query ="select sum(amount) from transactions where convert(created,date)=curdate()";
		try {
			conn = new connectDB().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	@Override
	public int getOrderByMonth() {
		String query ="select count(id) from transactions where month(created) = month(curdate())";
		try {
			conn = new connectDB().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	@Override
	public int getProductByMonth() {
		String query ="select count(product_id) from transactions inner join ordered on transactions.id = ordered.transaction_id where month(created) = month(curdate())";
		try {
			conn = new connectDB().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	@Override
	public int getPricerByMonth() {
		String query ="select sum(amount) from transactions where month(created)=month(curdate())";
		try {
			conn = new connectDB().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

}
