const select = document.querySelector('#select');
const opciones = document.querySelector('#opciones');
const contenidoSelect = document.querySelector('#select .contenido-select');
const hiddenInput = document.querySelector('#inputSelect');

document.querySelectorAll('#opciones > .opcion').forEach((opcion) => {
	opcion.addEventListener('click', (e) => {
		e.preventDefault();
		contenidoSelect.innerHTML = e.currentTarget.innerHTML;
		select.classList.toggle('active');
		opciones.classList.toggle('active');
		hiddenInput.value = e.currentTarget.querySelector('.titulo').innerText;
	});
});

select.addEventListener('click', () => {
	select.classList.toggle('active');
	opciones.classList.toggle('active');
});


const seleccionar = document.querySelector('#selecionar');
const options = document.querySelector('#options');
const contenido = document.querySelector('#selecionar .contenido-seleccionar');
const hidden = document.querySelector('#inputSeleccionar');

document.querySelectorAll('#options > .option').forEach((opcion) => {
	opcion.addEventListener('click', (e) => {
		e.preventDefault();
		contenido.innerHTML = e.currentTarget.innerHTML;
		seleccionar.classList.toggle('active');
		options.classList.toggle('active');
		hidden.value = e.currentTarget.querySelector('.titulo').innerText;
	});
});

seleccionar.addEventListener('click', () => {
	seleccionar.classList.toggle('active');
	options.classList.toggle('active');
});