
class ServerSecretKeyBetterVersion {
    
    private let APP_SECRET_KEY = "QCYAnfkf:G3gf:90Latabg@5241AB"
    private let ADMIN_USER_NAME = "admin"
    private let ADMIN_PASSWORD = "123456"
    
    /**
     * GOOD <br>
     * - Explaining and reuse username and password variable <br/>
     * - Create constant ADMIN_USER_NAME, ADMIN_PASSWORD, APP_SECRET_KEY for reused and easy to change in future  <br/>
     * - Return function earlier => easy to read  <br/>
     * - Minimize boolean expression <br/>
     * - Don't have nested if else
     */
    private func getServerSecretKey(request: HttpServletRequest) -> String {
        let userName = request.getParameter("u")
        let password = request.getParameter("p")
    
        if !(userName == ADMIN_USER_NAME) && !(password == ADMIN_PASSWORD) {
            return "Your user and password is wrong"
        }
        if userName == ADMIN_USER_NAME {
            return "Your pass word is wrong"
        }
        if password == ADMIN_PASSWORD {
            return "Your user name word is wrong"
        }
        return APP_SECRET_KEY
    }
}