const boton = document.getElementById('botonAlta');
boton.addEventListener("click", verificarAlta);
  function verificarAlta(){   
    let todoValido = nombreValido() && apellidoValido() && correoValido();   
    if(!todoValido){
        if(!nombreValido())
            alert("Ingresar nombre nuevamente");
        if(!apellidoValido())
            alert("Ingresar apellido nuevamente"); 
        if(!correoValido())
            alert("Ingresar correo nuevamente");
    }
 }  
  function nombreValido(){
    let nombre = document.getElementById("nombre").value;
    return nombre.length > 3;
  }
  function apellidoValido(){
    let apellido = document.getElementById("apellido").value;
    return apellido.length > 2;
  }
  function correoValido(){
    let email = document.getElementById("correo").value;
    let regexEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/ ;
    let test = regexEmail.test(email);
    return test; 
}
