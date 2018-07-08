package com.framgia.Part2.serversecretkey;

import javax.servlet.http.HttpServletRequest;

public class ServerSecretKeyBetterVersion {

    private static final String APP_SECRET_KEY = "QCYAnfkf:G3gf:90Latabg@5241AB";
    private static final String ADMIN_USER_NAME = "admin";
    private static final String ADMIN_PASSWORD = "123456";

    /**
     * GOOD <br>
     * - Explaining and reuse username and password variable <br/>
     * - Create constant ADMIN_USER_NAME, ADMIN_PASSWORD, APP_SECRET_KEY for reused and easy to change in future  <br/>
     * - Return function earlier => easy to read  <br/>
     * - Minimize boolean expression <br/>
     * - Don't have nested if else
     */
    private static String getServerSecretKey(HttpServletRequest request) {
        String userName = request.getParameter("u");
        String password = request.getParameter("p");

        if (!userName.equals(ADMIN_USER_NAME) && !password.equals(ADMIN_PASSWORD)) {
            return "Your user and password is wrong";
        }
        if (userName.equals(ADMIN_USER_NAME)) {
            return "Your pass word is wrong";
        }
        if (password.equals(ADMIN_PASSWORD)) {
            return "Your user name word is wrong";
        }
        return APP_SECRET_KEY;
    }

}
