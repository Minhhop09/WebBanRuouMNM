package dao;


import model.Transactions;

public interface AdminDashboard {
	int getOrderByDay();
	int getProductByDay();
	int getPriceByDay();
	int getOrderByMonth();
	int getProductByMonth();
	int getPricerByMonth();
}
