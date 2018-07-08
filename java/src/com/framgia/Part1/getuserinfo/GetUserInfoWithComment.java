package com.framgia.Part1.getuserinfo;

import java.util.Calendar;
import java.util.List;

public class GetUserInfoWithComment {

    static class RestClient {
        /**
         * DEMO METHOD
         * This method make a request to server then receive a list of users
         */
        static List<User> execute(String method, String url, int timeout) {
            return null;
        }
    }

    // Can you come up with a better name here
    // Find a specific alternative to get that perfectly describe this function
    private static List<User> getUsers() {
        // What is more important here?
        // the format of the date
        // or the date it self
        // Come up with a better name for this variables.
        long yyyymmdstr = System.currentTimeMillis();
        return RestClient.execute("GET", "http://example.com/users&starts_date=" + yyyymmdstr, 69); // what's is 69?
    }

    private static int totalAge() {
        return totalAge(getUsers());
    }

    // Should we name this function like a getter?
    private static int totalAge(List<User> users) {
        int total = 0;
        for (User u : users) { // Find a better name for this variable
            int userBirthDay = getYearInTimeStr(u.getBirthday());
            int currentYear = Calendar.getInstance().get(Calendar.YEAR);
            total += currentYear - userBirthDay;
        }
        return total;
    }

    /**
     * DEMO METHOD
     * This method will return year from time string
     */
    private static int getYearInTimeStr(String time) {
        return 0;
    }
}
