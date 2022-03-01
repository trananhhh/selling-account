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
public class User {
    /*
	Username nvarchar (500) NOT NULL PRIMARY KEY,
	Password nvarchar (500) NOT NULL,
	Email nvarchar (500) NOT NULL,
	Phone nvarchar (500) NOT NULL,
	Role int NOT NULL,
    */
    private String username;
    private String password;
    private String email;
    private String phone;
    private int role;

    public User() {
    }

    public User(String username, String password, String email, String phone, int role) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.role = role;
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
