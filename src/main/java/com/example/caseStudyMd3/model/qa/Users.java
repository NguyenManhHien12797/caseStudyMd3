package com.example.caseStudyMd3.model.qa;
import java.util.Date;


public class Users {
    private int id;
    private String account;
    private String password;
    private String name;
    private String gender;
    private Date birthDate;
    private String mail;
    private String phone;
    private String role;


    public Users(String account, String password, String name, String gender, Date birthDate, String mail, String phone) {
        this.account = account;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.birthDate = birthDate;
        this.mail = mail;
        this.phone = phone;
    }

    public Users(int id, String account, String password, String name, String gender,Date birthDate, String mail, String phone) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.birthDate = birthDate;
        this.mail = mail;
        this.phone = phone;
    }

    public Users(String account, String password) {
        this.account = account;
        this.password = password;
    }

    public Users(String account, String password, String name) {
        this.account = account;
        this.password = password;
        this.name = name;
    }

    public Users(int id, String account, String password, Role role) {
        this.id = id;
        this.account = account;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }




}
