<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ListaContactos.aspx.vb" Inherits="Ejemplos_2_Consumo_xml_ListaContactos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ejemplo de consumo de XML</title>
</head>
<body>
    <p>
        Este es un ejemplo para presentar los datos en un GridView</p>
    <form id="form1" runat="server">
    <p>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
            DataFile="~/Ejemplos 2/03-xml/ListaContactosMiguel.xml"></asp:XmlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="idpersona" 
            DataSourceID="XmlDataSource1" AutoGenerateColumns="False" EnableModelValidation="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="idpersona" HeaderText="idpersona" SortExpression="idpersona" />
                <asp:BoundField DataField="tipoPersona" HeaderText="tipoPersona" SortExpression="tipoPersona" />
            </Columns>
        </asp:GridView>
    </p>
    <div>
    
        Este es un ejemplo para presentar todos los datos<br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="XmlDataSource2" Visible="False" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="amigo-de" HeaderText="amigo-de" 
                    SortExpression="amigo-de" />
                <asp:BoundField DataField="familiar-de" HeaderText="familiar-de" 
                    SortExpression="familiar-de" />
            </Columns>
        </asp:GridView>
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" 
            DataFile="~/Ejemplos 2/03-xml/ListaContactosMiguel.xml" 
            XPath="/listaContactos/PERSONACONTACTO/relacion"></asp:XmlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
