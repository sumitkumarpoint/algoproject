function f() {

    var fn = document.getElementById('fn').value;
    var ln = document.getElementById('ln').value;
    var email = document.getElementById('email').value;
    var pass = document.getElementById('pass').value;
    var c_pass = document.getElementById('c_pass').value;
    if(fn==''){
        alert("First Name is require");
        return false;
    }
    if(ln==''){
        alert("Last  is require");
        return false;
    }

    if(email==''){
        alert("Email  is require");
        return false;
    }



    var at= em.indexOf('@');
    var dot=em.lastIndexOf('.');
    var d=dot - at;
    var d1= em.length - dot ;

    if(d1<3 || at<1 || d<=2 )
    {
        alert("invailid email");
        return false;
    }




    if(pass==''){
        alert("Password  is require");
        return false;
    }
    if(c_pass==''){
        alert("Confirm Password  is require");
        return false;
    }
  if(pass!=c_pass){
        alert("Passwords are miss match ");
        return false;
  }




}
function f1(){
    var em = document.getElementById('le').value;
    var pa = document.getElementById('lp').value;

    if(em==''){
        alert("Email  is require");
        return false;
    }


    var at= em.indexOf('@');
    var dot=em.lastIndexOf('.');
     var d=dot - at;
     var d1= em.length - dot ;

    if(d1<3 || at<1 || d<=2 )
    {
        alert("invailid email");
        return false;
    }


    if(pa==''){
        alert("Password  is require");
        return false;
    }

}