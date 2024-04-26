package service; 
 
import java.util.List;

import model.Admin; 
public interface AdminService { 
	void insert(Admin admin); 
 
	void edit(Admin admin); 

	void delete(String id); 
 
	Admin get(int id); 
	 
	Admin get(String name); 
 
	List<Admin> getAll(); 
 
} 
