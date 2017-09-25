package com.newer.pojo;
// default package



/**
 * Message entity. @author MyEclipse Persistence Tools
 */

public class Message  implements java.io.Serializable {


    // Fields    

     @Override
	public String toString() {
		return "Message [id=" + id + ", user=" + user + ", title=" + title
				+ ", words=" + words + ", date=" + date + ", view=" + view
				+ "]";
	}

	private int id;
     private User user;
     private String title;
     private String words;
     private String date;
     private String view;


    // Constructors

    /** default constructor */
    public Message() {
    }

	/** minimal constructor */
    public Message(User user, String words) {
        this.user = user;
        this.words = words;
    }
    
    /** full constructor */
    public Message(User user, String title, String words, String date, String view) {
        this.user = user;
        this.title = title;
        this.words = words;
        this.date = date;
        this.view = view;
    }

   
    // Property accessors

    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }

    public String getWords() {
        return this.words;
    }
    
    public void setWords(String words) {
        this.words = words;
    }

    public String getDate() {
        return this.date;
    }
    
    public void setDate(String date) {
        this.date = date;
    }

    public String getView() {
        return this.view;
    }
    
    public void setView(String view) {
        this.view = view;
    }
   








}