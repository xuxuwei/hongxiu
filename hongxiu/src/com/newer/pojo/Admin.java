package com.newer.pojo;
// default package



/**
 * Admin entity. @author MyEclipse Persistence Tools
 */

public class Admin  implements java.io.Serializable {


    // Fields    

     @Override
	public String toString() {
		return "Admin [id=" + id + ", adminname=" + adminname + ", password="
				+ password + "]";
	}

	private int id;
     private String adminname;
     private String password;


    // Constructors

    /** default constructor */
    public Admin() {
    }

    
    /** full constructor */
    public Admin(String adminname, String password) {
        this.adminname = adminname;
        this.password = password;
    }

   
    // Property accessors

    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    public String getAdminname() {
        return this.adminname;
    }
    
    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
   








}