package com.ytx.web.service;

import java.util.List;

import com.ytx.web.entity.User;

public interface UserManager {
	    public User getUser(String id);  
     
	    public List<User> getAllUser();  
	      
	    public void addUser(User user);  
	      
	    public boolean delUser(String id);  
	      
	    public boolean updateUser(User user); 
}
