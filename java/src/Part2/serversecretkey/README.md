# Server Secret Key

#### Problem
There is a secret key in server and we want to get this key for do something.
Write a function which use to return server secret key.

#### Data
Server secret key: `QCYAnfkf:G3gf:90Latabg@5241AB`.
Admin data: {username: "admin", password:"123456"}

#### Condition
- Only admin user can get the `server secret key`
- Username and password is get from `HTTP GET`
- If user provide correct username and password => return the `server secret key`
- If user provide wrong both username and password => return `"Your username and password is wrong"`
- If user provide wrong  username => return `"Your username is wrong"`
- If user provide wrong  password => return `"Your password is wrong"`
