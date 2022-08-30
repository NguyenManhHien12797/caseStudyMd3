package com.example.caseStudyMd3.model.qa;

import com.example.caseStudyMd3.model.qa.RS.Role;
import com.example.caseStudyMd3.model.qa.RS.Status;

import java.util.Date;

public class Users {
    private int id;
    private String account;
    private String password;
    private String name;
    private String gender;
    private int age;
    private Date birthDate;
    private String mail;
    private String phone;
    private Role role;
    private Status status;

    public Users(String account, String password, String name, String gender, int age, Date birthDate, String mail, String phone, Role role, Status status) {
        this.account = account;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.age = age;
        this.birthDate = birthDate;
        this.mail = mail;
        this.phone = phone;
        this.role = role;
        this.status = status;
    }

    public Users(int id, String account, String password, String name, String gender, int age, Date birthDate, String mail, String phone, Role role, Status status) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.age = age;
        this.birthDate = birthDate;
        this.mail = mail;
        this.phone = phone;
        this.role = role;
        this.status = status;
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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
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

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }
}
