/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entities;

/**
 *
 * @author admin
 */
public class Marketing {
    private int marketer_id, lc_id, marketing_id;
    private String title, content, image, posted_date, updated_date;

    public Marketing() {
    }

    public Marketing(int marketer_id, int lc_id, int marketing_id, String title, String content, String image, String posted_date, String updated_date) {
        this.marketer_id = marketer_id;
        this.lc_id = lc_id;
        this.marketing_id = marketing_id;
        this.title = title;
        this.content = content;
        this.image = image;
        this.posted_date = posted_date;
        this.updated_date = updated_date;
    }

    public int getMarketer_id() {
        return marketer_id;
    }

    public void setMarketer_id(int marketer_id) {
        this.marketer_id = marketer_id;
    }

    public int getLc_id() {
        return lc_id;
    }

    public void setLc_id(int lc_id) {
        this.lc_id = lc_id;
    }

    public int getMarketing_id() {
        return marketing_id;
    }

    public void setMarketing_id(int marketing_id) {
        this.marketing_id = marketing_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPosted_date() {
        return posted_date;
    }

    public void setPosted_date(String posted_date) {
        this.posted_date = posted_date;
    }

    public String getUpdated_date() {
        return updated_date;
    }

    public void setUpdated_date(String updated_date) {
        this.updated_date = updated_date;
    }
    
}
