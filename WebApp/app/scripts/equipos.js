var tablaDeEquipos;
var cuerpoTablaDeEquipos;

$(window).load(function () {
    $('#FormListarEquipos').submit(obtenerEquipos);
    tablaDeEquipos = $('#TablaDeEquipos');
    cuerpoTablaDeEquipos = $('#CuerpoTablaDeEquipos');
    tablaDeEquipos.hide();
});

function obtenerEquipos() {
    var torneosInactivos = $('#CheckBoxTorneosInactivos').is(':checked');
    $.ajax({
        url: '/app/services/EquipoService.asmx/ObtenerEquipos',
        type: 'POST',
        dataType: 'json',
        data: "{ torneosInactivos: '" + torneosInactivos + "'}",
        contentType: "application/json; charset=utf-8",
        success: function (resultado) {
            tablaDeEquipos.show();
            cuerpoTablaDeEquipos.empty();
            var equipos = resultado.d; //En la propiedad 'd' del resultado del servicio esta el array de equipos
            equipos.forEach(function (equipo) {
                cuerpoTablaDeEquipos.append(agregarFila(equipo));
            });
        },
        error: function (mensaje) {
            console.log(mensaje);
        }
    });
    
    return false; //Evitar que se invíe el form.
};

function agregarFila(equipo) {
    var fila = '<tr>';
    fila += agregarCelda(equipo.Nombre);
    fila += agregarCelda(equipo.MontoAbonado);
    fila += agregarCelda(equipo.NombreTorneo);
    fila += agregarCelda((equipo.TorneoActivo === true) ? 'Activo' : 'Inactivo');
    fila += '</tr>';
    return fila;
};

function agregarCelda(dato) {
    var celda = '<td>' + dato + '</td>';
    return celda;
};