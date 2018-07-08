package com.framgia.Part1.getuserinfo;

public class User {
    private String name;
    private String birthday;

    public User(String birthday) {
        this.birthday = birthday;
    }

    public User(String name, String birthday) {
        this.name = name;
        this.birthday = birthday;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
}
