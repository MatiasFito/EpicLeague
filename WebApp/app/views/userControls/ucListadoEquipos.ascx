<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucListadoEquipos.ascx.cs" Inherits="WebApp.app.views.userControls.ucListadoEquipos" %>
<form id="FormListarEquipos" class="form form-inline" action="#" method="post">
    <div class="form-group">
        <button id="ButtonListarEquipos" class="btn btn-primary form-control">Listar equipos</button>
        <label id="LabelTorneosInactivos" class="form-label" for="CheckBoxTorneosInactivos">Incluir equipos de torneos inactivos</label>
        <input type="checkbox" id="CheckBoxTorneosInactivos" checked="checked" />
    </div>
</form>
<table id="TablaDeEquipos" class="table table-hover">
    <thead>
        <tr>
            <th class="text-center">Nombre</th>
            <th class="text-center">Monto Abonado</th>
            <th class="text-center">Torneo</th>
            <th class="text-center">Estado del torneo</th>
        </tr>
    </thead>
    <tbody id="CuerpoTablaDeEquipos" class="text-center">
        
    </tbody>
</table>
