class User {
    var name: String
    var birthday: String
    
    init(birthday: String) {
        self.birthday = birthday
    }
    
    init(name: String, birthday: String) {
        self.name = name
        self.birthday = birthday
    }
    
    func getName() -> String {
        return name
    }
    
    func setName(_ name: String) {
        self.name = name
    }
    
    func getBirthday() -> String {
        return birthday
    }
    
    func setBirthday(_ birthday: String) {
        self.birthday = birthday
    }
}
