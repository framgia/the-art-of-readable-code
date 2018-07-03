package Part1.getuserinfo;

import java.util.Calendar;
import java.util.List;

public class GetUserInfoBetterVersion {

    private final int REQUEST_TIMEOUT = 69;

    static class User {
        String birthday;
    }

    static class RestClient {
        /**
         * DEMO METHOD
         * This method make a request to server then receive a list of users
         */
        static List<User> execute(String method, String url, int timeout) {
            return null;
        }
    }

    // get user from the internet
    private List<User> fetchUsers() {
        long currentTime = System.currentTimeMillis();
        return RestClient.execute("GET", "http://example.com/users&starts_date=" + currentTime, REQUEST_TIMEOUT);
    }

    private int calculateTotalAge() {
        List<User> users = fetchUsers();
        int total = 0;
        for (User user : users) {
            total += calculateAge(user);
        }
        return total;
    }

    private int calculateAge(User user) {
        int userBirthDay = getYearInTimeStr(user.birthday);
        int currentYear = Calendar.getInstance().get(Calendar.YEAR);
        return currentYear - userBirthDay;
    }

    /**
     * DEMO METHOD
     * This method will return year from time string
     */
    private static int getYearInTimeStr(String time) {
        return 0;
    }
}
