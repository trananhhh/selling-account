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
public class Plan {
    /*
	ID int NOT NULL PRIMARY KEY,
	Name nvarchar (500) NOT NULL,
	Description nvarchar (500) NOT NULL,
	Price int NOT NULL
    */
    private int id;
    private String name, description;
    private int price;
    private String url;
    private int capacity;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Plan() {
    }

    public Plan(int id, String name, String description, int price, String url, int capacity) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.url = url;
        this.capacity = capacity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }
}
