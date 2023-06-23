/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Post {

    private int post_id, marketer_id, blog_id,subject_id;
    private Date posted_date, update_date;
    private String tittle,image, content, short_content;
    private Blog b;
    private AccountMarketer am;
    private String status;

    public Post() {
    }


    public Post(int post_id, int marketer_id, int blog_id,int subject_id,String tittle, Date posted_date, Date update_date, String image, String content, String short_content, String status, Blog b, AccountMarketer am) {
        this.post_id = post_id;
        this.marketer_id = marketer_id;
        this.blog_id = blog_id;
        this.subject_id = subject_id;
        this.tittle = tittle;
        this.posted_date = posted_date;
        this.update_date = update_date;
        this.image = image;
        this.content = content;
        this.short_content = short_content;
        this.status = status;
        this.b = b;
        this.am = am;

    }
    
      public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

     public int getSubject_id() {
        return subject_id;
    }

    public void setSubject_id(int subject_id) {
        this.subject_id = subject_id;
    }

    

    
    public Date getPosted_date() {
        return posted_date;
    }

    public void setPosted_date(Date posted_date) {
        this.posted_date = posted_date;
    }

    public Date getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(Date update_date) {
        this.update_date = update_date;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getShort_content() {
        return short_content;
    }

    public void setShort_content(String short_content) {
        this.short_content = short_content;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        if (status == "pending") {
            this.status = status;
        } else if (status == "approved") {
            this.status = status;
        } else if (status == "rejected") {
            this.status = status;
        }

    }

    public int getPost_id() {
        return post_id;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public int getMarketer_id() {
        return marketer_id;
    }

    public void setMarketer_id(int marketer_id) {
        this.marketer_id = marketer_id;
    }

    public int getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(int blog_id) {
        this.blog_id = blog_id;
    }

    public Blog getB() {
        return b;
    }

    public void setB(Blog b) {
        this.b = b;
    }

    public AccountMarketer getAm() {
        return am;
    }

    public void setAm(AccountMarketer am) {
        this.am = am;
    }

    
    
}
