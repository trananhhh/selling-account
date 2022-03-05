/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author _trananhhh
 */
public class Billing {
    /*
	Billing
        - ID: int
        - CustomerID: int (Customer)
        - PlanID: int (Plan) (netflix/spot/yt)
        - AccountID: int (Account)
        - Date: date
        - Duration: int
        - Price: int

    */
    private int id;
    private String username;
    private int planId;
    private int accountId;
    private String date;
    private int duration;
    private int price;

    public Billing() {
    }

    public Billing(int id, String username, int planId, int accountId, String date, int duration, int price) {
        this.id = id;
        this.username = username;
        this.planId = planId;
        this.accountId = accountId;
        this.date = date;
        this.duration = duration;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getPlanId() {
        return planId;
    }

    public void setPlanId(int planId) {
        this.planId = planId;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

}
