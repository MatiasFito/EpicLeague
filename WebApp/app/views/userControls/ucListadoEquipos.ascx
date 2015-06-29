<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucListadoEquipos.ascx.cs" Inherits="WebApp.app.views.userControls.ucListadoEquipos" %>
<form id="FormListarEquipos" action="#" method="post">
    <button id="ButtonListarEquipos">Listar equipos</button>
    <input type="checkbox" id="CheckBoxTorneosInactivos" checked="checked" />
</form>
<table id="TablaDeEquipos" border="1">
    <thead>
        <tr>
            <th>Nombre</th>
            <th>Monto Abonado</th>
            <th>Torneo</th>
            <th>Estado del torneo</th>
        </tr>
    </thead>
    <tbody id="CuerpoTablaDeEquipos">
        
    </tbody>
</table>
