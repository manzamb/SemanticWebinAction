<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TransformarWikipediaRDF.aspx.vb" Inherits="Ejemplos_3_Generador_DC_TransformarWikipediaRDF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    
        <asp:Xml ID="Xml1" runat="server" 
            DocumentSource="~/Ejemplos 3/RDFWikipedia.xml" 
            TransformSource="~/Ejemplos 3/XSLTWikipedia.xslt"></asp:Xml>
    
        </div>
    </form>
</body>
</html>
