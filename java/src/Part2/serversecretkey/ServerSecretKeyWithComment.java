package Part2.serversecretkey;

import javax.servlet.http.HttpServletRequest;

public class ServerSecretKeyWithComment {

    /**
     * PROBLEM <br/>
     * - Keyword admin and 123456 is used many times and it may change in future <br/>
     * - request.getParameter("u") and request.getParameter("p") used many time <br/>
     * - "u" and "p" is not clear <br/>
     * - Boolean expression can optimize (eg: !(a && b) => !a && !b <br/>
     * - Nested if else is not necessary
     */
    private static String getServerSecretKey(HttpServletRequest request) {
        String errorMessage = null;
        if (!(request.getParameter("u").equals("admin") && request.getParameter("p").equals("123456"))) {
            errorMessage = "Your user and password is wrong";
        } else {
            if (request.getParameter("u").equals("admin")) {
                errorMessage = "Your pass word is wrong";
            } else if (request.getParameter("p").equals("123456")) {
                errorMessage = "Your user name word is wrong";
            }
        }
        if (errorMessage != null) {
            return errorMessage;
        }
        return "QCYAnfkf:G3gf:90Latabg@5241AB";
    }

}
