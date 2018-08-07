
import Foundation

class HttpServletRequest {
    func getParameter(_ string: String) -> String {
        return "param value"
    }
}

class ServerSecretKeyWithComment {
    
    /**
     * PROBLEM <br/>
     * - Keyword admin and 123456 is used many times and it may change in future <br/>
     * - request.getParameter("u") and request.getParameter("p") used many time <br/>
     * - "u" and "p" is not clear <br/>
     * - Boolean expression can optimize (eg: !(a && b) => !a && !b <br/>
     * - Nested if else is not necessary
     */
    
    private func getServerSecretKey(request: HttpServletRequest) -> String {
        var errorMessage = ""
        if !(request.getParameter("u") == "admin" && request.getParameter("p") == "123456") {
            errorMessage = "Your username and password is wrong"
        } else {
            if request.getParameter("u") == "admin" {
                errorMessage = "Your password is wrong"
            } else if request.getParameter("p") == "123456" {
                errorMessage = "Your username word is wrong"
            }
        }
        if errorMessage != "" {
            return errorMessage
        }
        
        return "QCYAnfkf:G3gf:90Latabg@5241AB"
    }
    
}
