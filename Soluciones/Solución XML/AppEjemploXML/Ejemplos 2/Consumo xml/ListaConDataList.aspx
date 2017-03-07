<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ListaConDataList.aspx.vb" Inherits="Ejemplos_2_Consumo_xml_ListaConDataList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <p>
        Este es un ejemplo para presentar los datos en un GridView</p>
    <form id="form1" runat="server">
    <p>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
            DataFile="~/App_Data/ListaContactosMiguel.xml"></asp:XmlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" 
            DataSourceID="XmlDataSource1" AutoGenerateColumns="False" 
            DataKeyNames="idpersona">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="idpersona" HeaderText="idpersona" 
                    SortExpression="idpersona" />
                <asp:BoundField DataField="tipoPersona" HeaderText="tipoPersona" 
                    SortExpression="tipoPersona" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" 
            DataFile="~/App_Data/ListaContactosMiguel.xml" 
            XPath="/listaContactos/PERSONACONTACTO/relacion"></asp:XmlDataSource>
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource2">
            <ItemTemplate>
                amigo-de:
                <asp:Label ID="amigo_deLabel" runat="server" Text='<%# Eval("[amigo-de]") %>' />
                <br />
                familiar-de:
                <asp:Label ID="familiar_deLabel" runat="server" Text='<%# Eval("[familiar-de]") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    </form>
 </body>
</html>
