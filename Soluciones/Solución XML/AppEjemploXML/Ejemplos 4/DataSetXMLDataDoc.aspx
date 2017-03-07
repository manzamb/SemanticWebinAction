<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DataSetXMLDataDoc.aspx.vb" Inherits="Ejemplo_4_DataSetXMLDataDoc" validateRequest=false %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btncargardsaxmldtc" runat="server" 
            Text="Cargar DataSet en XMLDataDocument" />
        <br />
        <br />
        <asp:Button ID="cargarxmlaxmldtc" runat="server" 
            Text="Cargar XML a XMLDataDocument" />
&nbsp;
        <br />
        <asp:GridView ID="grvContactos" runat="server">
        </asp:GridView>
        <br />
        <asp:Button ID="btnAplicarTransformacion" runat="server" 
            Text="Aplicar Transformación" />
        <br />
        <asp:TextBox ID="txtXML" runat="server" Height="203px" TextMode="MultiLine" 
            Width="563px"></asp:TextBox>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Ejemplos 2/HTML vs XML/XSLContacTransCodigo.html" 
            Visible="False">Archivo Transformado</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
