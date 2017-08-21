package com.ytx.web.entity;

import javax.persistence.Column;  
import javax.persistence.Entity;  
import javax.persistence.GeneratedValue;  
import javax.persistence.Id;  
import javax.persistence.Table;  
  
import org.hibernate.annotations.GenericGenerator; 

@Entity  
@Table(name="tauser")  
public class User {  
  
    @Id  
    @GenericGenerator(name="stuname-uuid",strategy="uuid")//根据提供的uuid策略自定义一个名字
	@GeneratedValue(generator="stuname-uuid")//引用上面定义的  
    @Column(length=32)  
    private String id;  
      
    @Column(length=12)  
    private String userName;  
      
    @Column(length=18)  
    private String password;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}  
  
   
    
      
}  
