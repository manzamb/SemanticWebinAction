
Partial Class Ejemplos_2_Consumo_xml_ListaContactos
    Inherits System.Web.UI.Page

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Dim currentIndex As Integer
        currentIndex = GridView1.SelectedIndex
        Dim idpersona As String
        idpersona = CStr(GridView1.DataKeys(currentIndex).Value)
        XmlDataSource2.XPath = String.Format("/listaContactos/PERSONACONTACTO[@idpersona='{0}']/relacion", idpersona)
        GridView2.Visible = True
    End Sub
End Class
