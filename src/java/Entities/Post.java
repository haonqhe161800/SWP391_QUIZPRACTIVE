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
    private int post_id,marketer_id,blog_id;
    private Date posted_date,update_date;
    private String image,content,short_content;
    private boolean status;

    public Post() {
    }

    public Post(int post_id, int marketer_id, int blog_id, Date posted_date, Date update_date, String image, String content, String short_content, boolean status) {
        this.post_id = post_id;
        this.marketer_id = marketer_id;
        this.blog_id = blog_id;
        this.posted_date = posted_date;
        this.update_date = update_date;
        this.image = image;
        this.content = content;
        this.short_content = short_content;
        this.status = status;
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

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
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
    
    
}
