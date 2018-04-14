<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DataSetXMLDataDoc.aspx.vb" Inherits="Ejemplo_4_DataSetXMLDataDoc" validateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>EJEMLOS DE USO DE LOS XML POR CODIGO FUENTE EN .NET</strong><br />
        <br />
        Archivo XML Contacto.xml:<br />
        <asp:TextBox ID="txtXML" runat="server" Height="203px" TextMode="MultiLine" 
            Width="563px"></asp:TextBox>
        <br />
        <br />
        Crear un XML ListaPcXMLDataDoc.xml a partir de una vista en la BD SQL Server:<br />
    
        <asp:Button ID="btncargardsaxmldtc" runat="server" 
            Text="Cargar DataSet en XMLDataDocument" />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Ejemplos 2/03-xml/ListaPcXMLDataDoc.xml" Target="_blank" Visible="False">Ver XML cargado de la BD</asp:HyperLink>
        <br />
        <br />
        Presentar la información del XML creado a partir de la BD en una tabla en pantalla<br />
        <asp:Button ID="cargarxmlaxmldtc" runat="server" 
            Text="Cargar XML a XMLDataDocument" />
&nbsp;
        <br />
        <asp:GridView ID="grvContactos" runat="server">
        </asp:GridView>
        <br />
        Realizar una transformación del primer archivo de Contacto.xml y crear el HTML a partir del XSLContactos.xsd:<br />
        <asp:Button ID="btnAplicarTransformacion" runat="server" 
            Text="Aplicar Transformación" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Ejemplos 2/03-xml/XSLContacTransCodigo.html" 
            Visible="False" Target="_blank">Archivo Transformado</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
