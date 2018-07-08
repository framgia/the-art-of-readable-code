package com.framgia.Part2.serversecretkey;

import javax.servlet.http.HttpServletRequest;

public class ServerSecretKey {

    private static String getServerSecretKey(HttpServletRequest request) {
        String errorMessage = null;
        if (!(request.getParameter("u").equals("admin") && request.getParameter("p").equals("123456"))) {
            errorMessage = "Your username and password is wrong";
        } else {
            if (request.getParameter("u").equals("admin")) {
                errorMessage = "Your password is wrong";
            } else if (request.getParameter("p").equals("123456")) {
                errorMessage = "Your username word is wrong";
            }
        }
        if (errorMessage != null) {
            return errorMessage;
        }
        return "QCYAnfkf:G3gf:90Latabg@5241AB";
    }

}
