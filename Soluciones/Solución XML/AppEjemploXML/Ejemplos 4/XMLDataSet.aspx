<%@ Page Language="VB" AutoEventWireup="false" CodeFile="XMLDataSet.aspx.vb" Inherits="Ejemplo_4_XMLDataSet" validateRequest=false %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        EJEMPLO PARA MOSTRAR DATOS DE UN XML<br />
    
        <asp:Button ID="btnMisContactos" runat="server" Text="Mostrar Contactos" />
    
        <br />
        <asp:GridView ID="grvContactos" runat="server">
        </asp:GridView>
        <br />
        EJEMPLO PARA GUARDAR DATOS DE UNA BASE DE DATOS A UN XML<br />
        <asp:Button ID="btnCargarBd" runat="server" Text="Cargar datos Contactos BD" />
        <br />
        <asp:GridView ID="grvContactosBd" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="btnGuardarXML" runat="server" 
            Text="Guardar XML XMLContactosBD.xml" Width="226px" />
&nbsp;&nbsp;
        <asp:Button ID="btnGuardarVariasTablas" runat="server" 
            Text="Guardar XML Varias Tablas (No anidado)" />
&nbsp;
        <asp:Button ID="btnVariasTablasAnidado" runat="server" 
            Text="XMLVariasTablas Anidado" />
        <br />
        <br />
        <asp:TextBox ID="txtXML" runat="server" Height="352px" TextMode="MultiLine" 
            Width="830px"></asp:TextBox>
        <br />
    
    </div>
    </form>
</body>
</html>
