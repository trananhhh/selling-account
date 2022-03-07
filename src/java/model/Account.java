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
public class Account {
    /*
    Account	
    ID	1
    PlanID	1
    Account	abc@gmail.com
    Password	123123
    Date	5/5/22
    Status	TRUE
    CurrentUsers	3
    */
    private int id;
    private int planId;
    private String account;
    private String password;
    private String date;
    private int status;
    private int currentUsers;

    public Account() {
    }

    public Account(int id, int planId, String account, String password, String date, int status, int currentUsers) {
        this.id = id;
        this.planId = planId;
        this.account = account;
        this.password = password;
        this.date = date;
        this.status = status;
        this.currentUsers = currentUsers;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPlanId() {
        return planId;
    }

    public void setPlanId(int planId) {
        this.planId = planId;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getCurrentUsers() {
        return currentUsers;
    }

    public void setCurrentUsers(int currentUsers) {
        this.currentUsers = currentUsers;
    }
}
