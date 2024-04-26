package service.impl;

import dao.AdminDao;
import dao.AdminDashboard;
import dao.impl.AdminDaoImpl;
import dao.impl.AdminDashboarDao;
import service.AdminDashboardService;

public class AdminDashboardServicesImpl implements AdminDashboardService{

	AdminDashboard adminDashboard = new AdminDashboarDao(); 
	@Override
	public int getOrderByDay() {
		// TODO Auto-generated method stub
		return adminDashboard.getOrderByDay();
	}

	@Override
	public int getProductByDay() {
		// TODO Auto-generated method stub
		return adminDashboard.getProductByDay();
	}

	@Override
	public int getPriceByDay() {
		// TODO Auto-generated method stub
		return adminDashboard.getPriceByDay();
	}

	@Override
	public int getOrderByMonth() {
		// TODO Auto-generated method stub
		return adminDashboard.getOrderByMonth();
	}

	@Override
	public int getProductByMonth() {
		// TODO Auto-generated method stub
		return adminDashboard.getProductByMonth();
	}

	@Override
	public int getPricerByMonth() {
		// TODO Auto-generated method stub
		return adminDashboard.getPricerByMonth();
	}

}
