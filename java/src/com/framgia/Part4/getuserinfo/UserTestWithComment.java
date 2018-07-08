package com.framgia.Part4.getuserinfo;

import com.framgia.Part1.getuserinfo.GetUserInfoBetter;
import com.framgia.Part1.getuserinfo.User;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;

public class UserTestWithComment {

    private GetUserInfoBetter getUserInfo = new GetUserInfoBetter();

    // The name test1() is meaningless
    @Test
    public void test1() {
        //The test is very long and full of unimportant details.
        //Adding another test isn’t easy.
        //The test tries to test everything at once.

        List<User> users = new ArrayList<>();
        // The test inputs aren’t simple.
        // The test inputs don’t thoroughly exercise the code.
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
