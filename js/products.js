$(document).ready(inicializar);

function inicializar(){
    $("#botonPagAnt").click(cambiarPagina);
    $("#botonPagSig").click(cambiarPagina);
}

function cambiarPagina(){
    //alert($("#actualQuery").val());
    $.ajax({
		async:true,
		type: "POST",
		dataType: "html",
		contentType: "application/x-www-form-urlencoded",
		success:mostrarResultados,
		error:enchufarError,		
		timeout:4000,                      
		url:"obtenerCasas.php",     		
		data:$("#actualQuery").val()
	});
}

function mostrarResultados(){
    
}

function enchufarError() {
    alert("Error de servidor");
}


