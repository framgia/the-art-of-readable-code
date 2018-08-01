
import Foundation

class HttpServletRequest {
    func getParameter(_ string: String) -> String {
        return "param value"
    }
}

class ServerSecretKey {
    
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
