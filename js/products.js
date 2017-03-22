$(document).ready(inicializar);

function inicializar() {
    $(".button-back").click(cambiarPagina);
    $(".button-next").click(cambiarPagina);
    $("#pagActual").val("0");
}

function cambiarPagina() {
    var query = $("#actualQuery").val();
    var pagina = Number($("#pagActual").val());
    var cambio = Number($(this).val());
    if (!(pagina === 0 && cambio === -1)) {
        pagina = pagina + cambio;
    }
    $("#pagActual").val(pagina.toString());
    $(".pagActual").html("Pagina " + (pagina + 1).toString());
    var splitQuery = query.split("LIMIT");
    var newQuery = splitQuery[0] + "LIMIT " + (pagina * 12).toString() + ",12";

    $.ajax({
        async: true,
        type: "POST",
        dataType: "json",
        contentType: "application/x-www-form-urlencoded",
        success: mostrarResultados,
        error: enchufarError,
        timeout: 4000,
        url: "obtenerCasas.php",
        data: "sql=" + newQuery
    });
}

function mostrarResultados(datos) {
    //alert(datos);
    $.each(datos, function (index, casa) {
        $("#tituloBarrio" + index.toString()).html("<span>" + casa["titulo"] + "</span><br>" + casa["barrio"]);
        $("#link1" + index.toString()).attr("href", "single.php?id=" + casa["id"]);
        $("#link2" + index.toString()).attr("href", "single.php?id=" + casa["id"]);
        $("#portada" + index.toString()).attr("src", "images/" + casa["portada"]);
        $("#precio" + index.toString()).html("<i> </i>$" + casa["precio"]);
    });
}

function enchufarError() {
    alert("Error de servidor");
}



