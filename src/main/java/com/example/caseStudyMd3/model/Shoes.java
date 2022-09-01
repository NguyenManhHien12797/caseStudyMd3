package com.example.caseStudyMd3.model;

import java.util.List;

public class Shoes  extends Crawls {
    private int id;
    private int categoryId;
    private int brandId;
    private String name;
    private String oldPrice;
    private String newPrice;
    private String image;

    @Override
    public List<Shoes> getNike() {
        return super.getNike();
    }

    @Override
    public List<Shoes> getAdidas() {
        return super.getAdidas();
    }

    @Override
    public List<Shoes> getJordan() {
        return super.getJordan();
    }

    @Override
    public List<Shoes> getYeezy() {
        return super.getYeezy();
    }

    public Shoes(String name, String newPrice, String image) {
        this.name = name;
        this.newPrice = newPrice;
        this.image = image;
    }

    public Shoes(int id, int categoryId, int brandId, String name, String oldPrice, String newPrice, String image) {
        this.id = id;
        this.categoryId = categoryId;
        this.brandId = brandId;
        this.name = name;
        this.oldPrice = oldPrice;
        this.newPrice = newPrice;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public String getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(String oldPrice) {
        this.oldPrice = oldPrice;
    }

    public String getNewPrice() {
        return newPrice;
    }

    public void setNewPrice(String newPrice) {
        this.newPrice = newPrice;
    }

    public Shoes() {
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


}
