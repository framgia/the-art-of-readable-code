package com.framgia.Part1.getuserinfo;

import java.util.Calendar;
import java.util.List;

public class GetUserInfo {

    static class RestClient {
        /**
         * DEMO METHOD
         * This method make a request to server then receive a list of users
         */
        static List<User> execute(String method, String url, int timeout) {
            return null;
        }
    }

    private static List<User> getUsers() {
        long yyyymmdstr = System.currentTimeMillis();
        return RestClient.execute("GET", "http://example.com/users&starts_date=" + yyyymmdstr, 69);
    }

    private static int totalAge() {
        return totalAge(getUsers());
    }

    private static int totalAge(List<User> users) {
        int total = 0;
        for (User u : users) {
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
