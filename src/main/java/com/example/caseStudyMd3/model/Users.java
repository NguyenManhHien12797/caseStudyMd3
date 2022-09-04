package com.example.caseStudyMd3.model;
import java.util.Date;


public class Users {
    private int id;
    private String account;
    private String password;
    private String role;
    private String name;
    private String avatar;
    private String gender;
    private Date birthDate;
    private String mail;
    private String phone;


    public Users(String account, String password, String role, String name, String avatar, String gender, Date birthDate, String mail, String phone) {
        this.account = account;
        this.password = password;
        this.role = role;
        this.name = name;
        this.avatar = avatar;
        this.gender = gender;
        this.birthDate = birthDate;
        this.mail = mail;
        this.phone = phone;
    }

    public Users(int id, String account, String password, String role, String name, String avatar, String gender, Date birthDate, String mail, String phone) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.role = role;
        this.name = name;
        this.avatar = avatar;
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

    public Users(int id, String account, String password, String role) {
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

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}