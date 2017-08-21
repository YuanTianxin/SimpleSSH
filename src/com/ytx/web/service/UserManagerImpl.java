package com.ytx.web.service;

import java.util.List;

import com.ytx.web.dao.UserDao;
import com.ytx.web.entity.User;

public class UserManagerImpl  implements UserManager {
	private UserDao userDao;  
    
    public void setUserDao(UserDao userDao) {  
        this.userDao = userDao;  
    }  
  
    @Override  
    public User getUser(String id) {  
        return userDao.getUser(id);  
    }  
  
    @Override  
    public List<User> getAllUser() {  
        return userDao.getAllUser();  
    }  
  
    @Override  
    public void addUser(User user) {  
        userDao.addUser(user);  
    }  
  
    @Override  
    public boolean delUser(String id) {  
          
        return userDao.delUser(id);  
    }  
  
    @Override  
    public boolean updateUser(User user) {  
        return userDao.updateUser(user);  
    }  
}
