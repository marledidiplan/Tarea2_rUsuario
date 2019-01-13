<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="pUsuarioWeb.Registro.RegistroUsuario" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div
         class="text-center">
            <h1 style="font-size: x-large; font-family: 'Agency FB', Times, serif; font: bold;"><ins>Registro de Usuarios</ins></h1>
        </div>
        <div
            class="form-group">
            <label for="nombre"> Nombres: </label>
            <input Type ="nombre" class ="form-control" id="nombre" />
            
        </div>
        <div
             class="form-group">
            <label for="apellido"> Apellidos: </label>
            <input Type ="apellido" class ="form-control" id ="apellido" />
            </div>
        <div
             class="form-group">
            <label for="Correo"> Correo electronico: </label>
            <input Type ="correo" class ="form-control" id ="correo" />
        </div>
        <div
             class="form-group">
            <label for="confirmar"> Confirmar Correo electronico: </label>
            <input Type ="confirmar" class ="form-control" id ="confirmar" />
        </div>
        <div
            class ="form-group">

            <label for="cont"> Contraseña:</label>
            <input type="cont" class="form-control" id ="cont" />

        </div>
        <div
            class="form-group">
            <label for="confir"> Confirma contraseña</label>
            <input type="confir" class="form-control" id="confir"/>
            <br>
        </div>
        
        <div class="text-center">
            
            
        <button type="button" class ="btn btn-primary btn sm" >Nuevo</button>
          <button type="button" class ="btn btn-primary btn sm" >Guardar</button>
         <button type="button" class ="btn btn-primary btn sm" >Eliminar</button>

         </div>






</asp:Content> 

