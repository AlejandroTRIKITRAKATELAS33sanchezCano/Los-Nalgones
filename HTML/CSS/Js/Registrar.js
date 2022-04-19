const form = document.getElementById('formulario');
const nombre = document.getElementById('nombre');
const appat = document.getElementById('appat');
const apmat = document.getElementById('apmat');
const password = document.getElementById('password');

function checkInputs() {
	
	const usuarioValue = nombre.value.trim();
	const appatValue = appat.value.trim();
    const apamatValue = apmat.value.trim();
	const passwordValue = password.value.trim();
	
	if(usuarioValue === '') {
		alert('No puede dejar el nombre en blanco');
        event.preventDefault();
        window.history.back();
	}else if (!isNombre(usuarioValue)){
        alert('No ingreso un nombre valido');
    } else {
		setSuccessFor(nombre);
        
	}
	
	if(appatValue === '') {
		alert('No puede dejar el apellido paterno en blanco');
        event.preventDefault();
        window.history.back();
	}else if (!isNombre(appatValue)){
        alert('No ingreso un apellido valido');
    } else {
		setSuccessFor(appat);
        
	}

    if(apamatValue === '') {
		alert('No puede dejar el apellido paterno en blanco');
        vent.preventDefault();
        window.history.back();
	}else if (!isNombre(apamatValue)){
        alert('No ingreso un apellido valido');
    } else {
		setSuccessFor(appat);
        
    }

	if(passwordValue === '') {
		alert('Password no debe ingresar en blanco.');
	} else {
		setSuccessFor(password);
        
	}

}

function setSuccessFor(input) {
	const formControl = input.parentElement;
	formControl.className = 'form-control success';
}

function isEmail(email) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}

function isNombre(nombre) {
	return /^[a-zA-ZÀ-ÿ\s]{1,40}$/.test(nombre);
}