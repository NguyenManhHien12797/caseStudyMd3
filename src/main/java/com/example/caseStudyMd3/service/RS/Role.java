package com.example.caseStudyMd3.service.RS;

public enum Role {
    ADMIN(0),
    USER(1),
    ;
    private final int role;

    Role(int role) {
        this.role = role;
    }

    public int getRole() {
        return role;
    }
}
