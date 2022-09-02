package com.example.caseStudyMd3.model;

public class Brand {
    private int id;
    private String name;
    private String madeIn;

    public Brand() {
    }

    public Brand(int id, String name, String madeIn) {
        this.id = id;
        this.name = name;
        this.madeIn = madeIn;
    }

    public Brand(int id, String name) {
        this.id = id;
        this.name = name;
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

    public String getMadeIn() {
        return madeIn;
    }

    public void setMadeIn(String madeIn) {
        this.madeIn = madeIn;
    }
}
