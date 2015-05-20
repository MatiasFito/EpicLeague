$(window).load(function () {
    $('#btn_resumen_equipos').click(function () {
        window.location = "/app/views/resumen/Default.aspx";
    })

    $('#btn_administracion_equipos').click(function () {
        window.location = "/app/views/administracion/CreacionTorneos.aspx";
    })
})