const login=document.getElementById("login");
const signup=document.getElementById('sign-up-data')


function storesfdLogin(e){
  //  e.preventDefault();
    const sfd_login={
        name:login.name.value,
        password:login.password.value
    }
    console.log(sfd_login);
}

login.addEventListener('submit',storesfdLogin);


function storesfdSignup(e){
    //e.preventDefault();
    const sfd_signup={
        name:signup.sfdname.value,
        phone:signup.sfdphone.value,
        email:signup.sfdemail.value,
        location:signup.location.value,
        password1:signup.password1.value,
        password2:signup.password2.value

    }
    console.log(sfd_signup);

}
signup.addEventListener('submit',storesfdSignup);



