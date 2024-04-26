package controller.admin;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Transactions;
import service.TransactionService;
import service.impl.TransactionServicesImpl;
import model.Catalog;
import service.AdminDashboardService;
import service.CategoryService;
import service.impl.AdminDashboardServicesImpl;
import service.impl.CategoryServicesImpl;
import model.Ordered;
import model.Product;
import service.OrderedService;
import service.ProductService;
import service.impl.OrderedServiceImpl;
import service.impl.ProductServiceImpl;

public class AdminHomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TransactionService transactionService = new TransactionServicesImpl();
	CategoryService categoryService = new CategoryServicesImpl();
	OrderedService orderService = new OrderedServiceImpl();
	DecimalFormat df = new DecimalFormat("#.000");
	AdminDashboardService admindashboardservice = new AdminDashboardServicesImpl();
    public AdminHomePage() {
        super();
    }	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int proday=0;
		double salesday=0;
		int promonth=0;
		double salesmonth=0;
		List<Catalog> listcate = categoryService.getAll();
		List<Ordered> listorder = orderService.getAll();
		List<Transactions> transactionList = transactionService.getByDay(); 
		List<Transactions> transactionList1 = transactionService.getByMonth(); 
		int n= transactionList.size();
		int m= transactionList1.size();
		
		
		int obd = admindashboardservice.getOrderByDay();
		int obm = admindashboardservice.getOrderByMonth();
		int pbd = admindashboardservice.getProductByDay();
		int pbm = admindashboardservice.getProductByMonth();
		int pricebd = admindashboardservice.getPriceByDay();
		int pricebm = admindashboardservice.getPricerByMonth();
		
		for(Transactions tran: transactionList ) {
			for (Ordered  item: listorder ) {
				if (Integer.parseInt(item.getTransaction_id())==tran.getId())
					proday =proday + item.getQty();
			}
			salesday= salesday + Double.parseDouble(tran.getAmount());
		}
		
		for(Transactions tran: transactionList1 ) {
			for (Ordered  item: listorder ) {
				if (Integer.parseInt(item.getTransaction_id())==tran.getId())
					promonth =promonth + item.getQty();
			}
			salesmonth= salesmonth + Double.parseDouble(tran.getAmount());
		}

		request.setAttribute("orderbyday",transactionList); 
		request.setAttribute("countorderbyday",n);
		request.setAttribute("countorderbymonth",m);
		request.setAttribute("countprobyday",proday);
		request.setAttribute("countprobymonth",promonth);
		request.setAttribute("salesday",df.format(salesday));
		request.setAttribute("salesmonth",df.format(salesmonth));
		request.setAttribute("ordertheongay", obd);
		request.setAttribute("producttheongay", pbd);
		request.setAttribute("pricetheongay", pricebd);
		request.setAttribute("ordertheothang", obm);
		request.setAttribute("producttheothang", pbm);
		request.setAttribute("pricetheothang", pricebm);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/index.jsp");
		dispatcher.forward(request,response);
	}
	
	public static void main(String[] args) throws Exception {
		String date=java.time.LocalDate.now().toString();
		TransactionService transactionService = new TransactionServicesImpl();
		List<Transactions> transactionList1 = transactionService.getByMonth(); 
		int n= transactionList1.size();
		System.out.println(transactionList1);
		System.out.println(n);

}

}
