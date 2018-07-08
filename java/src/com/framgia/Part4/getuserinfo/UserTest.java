package com.framgia.Part4.getuserinfo;

import com.framgia.Part1.getuserinfo.GetUserInfoBetter;
import com.framgia.Part1.getuserinfo.User;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;

public class UserTest {
    private GetUserInfoBetter getUserInfo = new GetUserInfoBetter();

    @Test
    public void test1() {
        List<User> users = new ArrayList<>();

        users.add(new User("Cong tan ton nu ta thi mong hang", "20-11-1991"));
        users.add(new User("Nguyen Van A2", "20-11-1992"));
        users.add(new User("Cong tan ton nu ta thi mong hang", "20-11-1991"));
        users.add(new User("Nguyen Van A2", "20-11-1992"));
        users.add(new User("Nguyen Van A3", "20-11-1993"));
        users.add(new User("Nguyen Van A4", "20-11-1994"));
        users.add(new User("Nguyen Van A5", "20-11-1995"));
        int expected = 125;
        assertEquals(expected, getUserInfo.calculateTotalAge(users));

        users.clear();
        users.add(new User("Cong tan ton nu ta thi mong hang", "20-11-1991"));
        users.add(new User("Nguyen Van A2", "20/11/1992"));
        users.add(new User("Nguyen Van A3", "20-11-1993"));
        users.add(new User("Nguyen Van A4", "20-11-1994"));
        users.add(new User("Nguyen Van A5", "20-11-1995"));
        expected = 125;
        assertEquals(expected, getUserInfo.calculateTotalAge(users));

        users.clear();
        users.add(new User("Cong tan ton nu ta thi mong hang", "20-11-1991"));
        users.add(new User("Nguyen Van A2", ""));
        users.add(new User("Nguyen Van A3", "20-11-1993"));
        users.add(new User("Nguyen Van A4", "20-11-1994"));
        users.add(new User("Nguyen Van A5", "20-11-1995"));
        expected = 109;
        assertEquals(expected, getUserInfo.calculateTotalAge(users));

        users.clear();
        users.add(new User("Cong tan ton nu ta thi mong hang", "20-11-1991"));
        users.add(new User("Nguyen Van A2", "20-11-1992"));
        users.add(new User("Nguyen Van A4", "20-11-1994"));
        users.add(new User("Nguyen Van A5", "20-11-1995"));
        expected = 100;
        assertEquals(expected, getUserInfo.calculateTotalAge(users));
    }
}
