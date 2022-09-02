package com.example.caseStudyMd3.model;

import com.example.caseStudyMd3.service.RS.Status;

import java.sql.Timestamp;

public class Product {
    private int id;
    private String category;
    private String brand;
    private String image;
    private String name;
    private double oldPrice;
    private double newPrice;

    public Product() {
    }

    public Product(int id, String image, String name, double oldPrice, double newPrice) {
        this.id = id;
        this.image = image;
        this.name = name;
        this.oldPrice = oldPrice;
        this.newPrice = newPrice;
    }

    public Product(int id, String category, String brand, String image, String name, double oldPrice, double newPrice) {
        this.id = id;
        this.category = category;
        this.brand = brand;
        this.image = image;
        this.name = name;
        this.oldPrice = oldPrice;
        this.newPrice = newPrice;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(double oldPrice) {
        this.oldPrice = oldPrice;
    }

    public double getNewPrice() {
        return newPrice;
    }

    public void setNewPrice(double newPrice) {
        this.newPrice = newPrice;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", image='" + image + '\'' +
                ", name='" + name + '\'' +
                ", oldPrice=" + oldPrice +
                ", newPrice=" + newPrice +
                '}';
    }
}
