package com.framgia.Part4.getuserinfo;

import com.framgia.Part1.getuserinfo.GetUserInfoBetter;
import com.framgia.Part1.getuserinfo.User;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;

public class UserTestBetter {
    private GetUserInfoBetter userInfo = new GetUserInfoBetter();

    private List<User> generate_data_users(String[] birthdays) {
        List<User> users = new ArrayList<>();
        for (String birthday : birthdays) {
            users.add(new User(birthday));
        }
        return users;
    }

    private int calculate_total(String[] birthdays) {
        List<User> users = generate_data_users(birthdays);
        return userInfo.calculateTotalAge(users);
    }

    @Test
    public void test_calculate_total_basic() {
        String[] birthdays = {"20-11-1991", "20-11-1992", "20-11-1993", "20-11-1994", "20-11-1995"};
        assertEquals(125, calculate_total(birthdays));
    }

    @Test
    public void test_calculate_total_backslash_char() {
        String[] birthdays = {"20-11-1991", "20/11/1992", "20-11-1993", "20-11-1994", "20-11-1995"};
        assertEquals(125, calculate_total(birthdays));
    }

    @Test
    public void test_calculate_total_nil_value() {
        String[] birthdays = {"20-11-1991", "", "20-11-1993", "20-11-1994", "20-11-1995"};
        assertEquals(109, calculate_total(birthdays));
    }
}
