<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="pUsuarioWeb.Registro.RegistroUsuario" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div
        class="text-center">
        <h1 style="font-size: x-large; font-family: 'Agency FB', Times, serif; font: bold;"><ins>Registro de Usuarios</ins></h1>
    </div>

    <div class="panel-body">

        <div class="form-horizontal col-md-12" role="form">

            <div class="form-gruop col-md-12">
                <label for="IdTextbox" class="col-md-3 control-label input-sm">ID:</label>
                <div class="col-md-1 col-sm-2 col-xm-4">
                    <asp:TextBox ID="IdTextbox" runat="server" placeholder="0"  class="form-control input-sm"></asp:TextBox>
                </div>
                <div class="col-md-1 col-sm-2 col-xm-4">
                    <asp:Button ID="BuscarBtton" runat="server" Text="Buscar" class="btn btn-info btn" OnClik="BuscarBtton_Click" OnClick="BuscarBtton_Click"/>
                </div>
                <br />

                <br />
            </div>

            <div class="form-gruop col-md-12">
                <label for="NombreTextbox" class="col-md-3 control-label input-sm">Nombre:</label>
                <div class="col-md-8">
                    <asp:TextBox ID="NombreTextbox" runat="server" class="form-control input-sm"></asp:TextBox>
                    <br />
                </div>
            </div>
            <div class="form-gruop col-md-12">
                <label for="Apellido Textbox" class="col-md-3 control-label input-sm">Apellido:</label>
                <div class="col-md-8">
                    <asp:TextBox ID="ApellidoTextbox" runat="server" class="form-control input-sm"></asp:TextBox>
                    <br />
                </div>
            </div>
            <div class="form-gruop col-md-12">
                <label for="CorreoTextbox" class="col-md-3 control-label input-sm">Correo Electrico:</label>
                <div class="col-md-8">
                    <asp:TextBox ID="CorreoTextBox" runat="server" class="form-control input-sm"></asp:TextBox>
                    <br />
                </div>
            </div>
            <div class="form-gruop col-md-12">
                <label for="CcorreoTextbox" class="col-md-3 control-label input-sm">Confirmar Correo electrico:</label>
                <div class="col-md-8">
                    <asp:TextBox ID="CcorreoTextBox" runat="server" class="form-control input-sm"></asp:TextBox>
                    <br />
                </div>
            </div>
            <div class="form-gruop col-md-12">
                <label for="ContrasenaTextbox" class="col-md-3 control-label input-sm">Contraseña:</label>
                <div class="col-md-8">
                    <asp:TextBox ID="ContrasenaTextBox" runat="server" class="form-control input-sm"></asp:TextBox>
                    <br />
                </div>
            </div>
            <div class="form-gruop col-md-12">
                <label for="CcontrasenaTextbox" class="col-md-3 control-label input-sm">Confirmar contraseña:</label>
                <div class="col-md-8">
                    <asp:TextBox ID="CcontrasenaTextBox" runat="server" class="form-control input-sm"></asp:TextBox>
                    <br />
                </div>
            </div>
            <div class="text-center">
                <asp:Button ID="NuevoBtton" runat="server" Text="Nuevo" class="btn btn-info btn" OnClik="NuevoBtton_Click" OnClick="NuevoBtton_Click1" />
                <asp:Button ID="GuardarBtton" runat="server" Text="Guardar" class="btn btn-Warning btn" OnClik="GuardarBtton_Click" OnClick="GuardarBtton_Click" />
                <asp:Button ID="EliminarBtton" runat="server" Text="Eliminar" class="btn btn-success btn" OnClik="EliminarBtton_Click" OnClick="EliminarBtton_Click" />
                
           
                </div>
            

        </div>
    </div>

</asp:Content>

