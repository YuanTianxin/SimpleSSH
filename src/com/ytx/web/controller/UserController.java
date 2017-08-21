package com.ytx.web.controller;

import java.io.IOException;  
import java.io.PrintWriter;  
import java.util.List;
  
import javax.annotation.Resource;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;
  
import com.ytx.web.entity.User;  
import com.ytx.web.service.*;
  
@Controller  
@RequestMapping("/user")  
public class UserController {  
  
    @Resource(name="userManager")  
    private UserManager userManager; 
    
    
    @RequestMapping("/toLogin")
	public String toLogin(){
		return "/login";
	}
    
    @RequestMapping(value="/toSuccess",method=RequestMethod.POST)
	public String login(User user,HttpServletRequest request) {//只要对象(entity类)实体的属性名和表单input框中的name一致，就能直接从表单中取出对象
		 boolean flag= false;
    	 List<User> userlist=userManager.getAllUser();
		 for(User u:userlist) {
			if(u.getUserName().equals(user.getUserName()) && u.getPassword().equals(user.getPassword())) {
				flag=true;
			}
		 }
		 if(flag) {
			 return "/success";
		 }
		 else {
			 return "/error";
		 }
	}
  
    @RequestMapping("/getAllUser")  
    public String getAllUser(HttpServletRequest request){  
          
        request.setAttribute("userList", userManager.getAllUser());  
          
        return "/userList";  
    }  
      
    @RequestMapping("/getUser")  
    public String getUser(String id,HttpServletRequest request){  
          
        request.setAttribute("user", userManager.getUser(id));  
      
        return "/editUser";  
    }  
      
    @RequestMapping("/toAddUser")  
    public String toAddUser(){  
        return "/addUser";  
    }  
      
    @RequestMapping("/addUser")  
    public String addUser(User user,HttpServletRequest request){  
          
        userManager.addUser(user);  
          
        return "/login";  
    }  
      
    @RequestMapping("/delUser")  
    public void delUser(String id,HttpServletResponse response){  
          
        String result = "{\"result\":\"error\"}";  
          
        if(userManager.delUser(id)){  
            result = "{\"result\":\"success\"}";  
        }  
          
        response.setContentType("application/json");  
          
        try {  
            PrintWriter out = response.getWriter();  
            out.write(result);  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }  
      
    @RequestMapping("/updateUser")  
    public String updateUser(User user,HttpServletRequest request){  
          
        if(userManager.updateUser(user)){  
            user = userManager.getUser(user.getId());  
            request.setAttribute("user", user);  
            return "redirect:/user/getAllUser";  
        }else{  
            return "/error";  
        }  
        
    }
    
}
