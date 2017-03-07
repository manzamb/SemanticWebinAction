<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ControlServidorXML.aspx.vb" Inherits="Ejemplo_4_ControlServidorXML" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Xml ID="Xml1" runat="server" 
            DocumentSource="~/Ejemplos 2/HTML vs XML/Contacto.xml" 
            TransformSource="~/Ejemplos 2/HTML vs XML/XSLContactos.xslt"></asp:Xml>
    
    </div>
    </form>
</body>
</html>
