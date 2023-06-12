
        function validateSignupForm() {
            var username = document.signupForm.signName.value;
            var password = document.signupForm.signPassword.value;
            var email = document.signupForm.email.value;
            var pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/



            if (email == "") {
		        alert("Please fill the required fields")
		        return false;
	         }
	        else if (password.length < 6) {
		        alert("Please enter a password with 6 characters")
		        return false;
	        }
			else if (username == "" ) {
				alert("Please fill the required fields")
		        return false;
			}
		
	        else {
		        alert("Sign up successfull!");
		        return true;
	}
}
        
    