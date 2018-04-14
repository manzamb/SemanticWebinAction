<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Ejemplos_2_Consumo_xml_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="idpersona" HeaderText="idpersona" SortExpression="idpersona" />
                <asp:BoundField DataField="tipoPersona" HeaderText="tipoPersona" SortExpression="tipoPersona" />
            </Columns>
        </asp:GridView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Ejemplos 2/03-xml/ListaContactosMiguel.xml"></asp:XmlDataSource>
        <br />
        <%--<asp:ListView ID="ListView1" runat="server" DataSourceID="XmlDataSource1" EnableModelValidation="True">
        </asp:ListView>--%>
    
    </div>
    </form>
</body>
</html>
