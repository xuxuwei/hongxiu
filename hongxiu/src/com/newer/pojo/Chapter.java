package com.newer.pojo;
// default package



/**
 * Chapter entity. @author MyEclipse Persistence Tools
 */

public class Chapter  implements java.io.Serializable {


    // Fields    

     @Override
	public String toString() {
		return "Chapter [id=" + id + ", novel=" + novel + ", chaptername="
				+ chaptername + ", content=" + content + ", createtime="
				+ createtime + ", updatetime=" + updatetime + "]";
	}

	private int id;
     private Novel novel;
     private String chaptername;
     private String content;
     private String createtime;
     private String updatetime;


    // Constructors

    /** default constructor */
    public Chapter() {
    }

	/** minimal constructor */
    public Chapter(Novel novel) {
        this.novel = novel;
    }
    
    public Chapter(int id, Novel novel, String chaptername, String content,
			String createtime, String updatetime) {
		super();
		this.id = id;
		this.novel = novel;
		this.chaptername = chaptername;
		this.content = content;
		this.createtime = createtime;
		this.updatetime = updatetime;
	}

	/** full constructor */
    public Chapter(Novel novel, String chaptername, String content, String createtime, String updatetime) {
        this.novel = novel;
        this.chaptername = chaptername;
        this.content = content;
        this.createtime = createtime;
        this.updatetime = updatetime;
    }

   
    // Property accessors

    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    public Novel getNovel() {
        return this.novel;
    }
    
    public void setNovel(Novel novel) {
        this.novel = novel;
    }

    public String getChaptername() {
        return this.chaptername;
    }
    
    public void setChaptername(String chaptername) {
        this.chaptername = chaptername;
    }

    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }

    public String getCreatetime() {
        return this.createtime;
    }
    
    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getUpdatetime() {
        return this.updatetime;
    }
    
    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }
   








}