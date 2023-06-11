function validateloginForm() {
    var username = document.loginForm.signName.value;
    var password = document.loginForm.signPassword.value;

    if (username== "") {
        alert("Please fill the required fields")
        return false;
     }
    else if (password.length < 6) {
        alert("Please enter a password with 6 characters")
        return false;
    }
    else {
        alert("Log in successfull!");
        return true;
}
    }