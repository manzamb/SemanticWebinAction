Imports System.Data
Imports System.Data.SqlClient
Imports System.IO

Partial Class Ejemplo_4_XMLDataSet
    Inherits System.Web.UI.Page

    Protected Sub btnMisContactos_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnMisContactos.Click
        Dim ds As New dataset

        'Llenamos los datos desde un XML
        ds.ReadXml(Server.MapPath("~/App_Data/ListacontactosMiguel.xml"))

        'Mostramos los datos
        Me.grvContactos.DataSource = ds
        Me.grvContactos.DataMember = ds.Tables(1).TableName
        Me.grvContactos.DataBind()
    End Sub

    Protected Sub btnCargarBd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCargarBd.Click
        Dim conn As New SqlConnection("Data Source=TERNURITA;Initial Catalog=AgendaBd;Persist Security Info=True;User ID=daci;Password=daci2009")
        Dim ds As New DataSet()
        Dim da As New SqlDataAdapter( _
        "select * from ListaPersonasContacto", conn)
        da.Fill(ds, "PersonasContacto")

        grvContactosBd.DataSource = ds
        grvContactosBd.DataMember = "PersonasContacto"
        grvContactosBd.DataBind()

    End Sub

    Protected Sub btnGuardarXML_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnGuardarXML.Click
        Dim conn As New SqlConnection("Data Source=TERNURITA;Initial Catalog=AgendaBd;Persist Security Info=True;User ID=daci;Password=daci2009")
        Dim ds As New DataSet()
        Dim da As New SqlDataAdapter( _
        "select * from ListaPersonasContacto", conn)
        da.Fill(ds, "PersonasContacto")

        ds.WriteXml(Server.MapPath("~/Ejemplos 4/XMLContactosBD.xml"), XmlWriteMode.IgnoreSchema)

        'Cargar el archivo en un Textbox
        txtXML.ReadOnly = True
        Dim objReader As System.IO.StreamReader
        objReader = File.OpenText(Server.MapPath("~/Ejemplos 4/XMLContactosBD.xml"))
        txtXML.Text = objReader.ReadToEnd

        'Otra forma de obtener el string de xml
        'Dim strXmlDS As String = ds.GetXml()
        'txtXML.Text = ""
        'txtXML.Text = strXmlDS

    End Sub

    Protected Sub btnGuardarVariasTablas_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnGuardarVariasTablas.Click
        Dim conn As New SqlConnection("Data Source=TERNURITA;Initial Catalog=AgendaBd;Persist Security Info=True;User ID=daci;Password=daci2009")
        Dim ds As New DataSet()
        Dim daPc As New SqlDataAdapter( _
        "select * from PersonaContacto", conn)
        Dim daDireccion As New SqlDataAdapter( _
        "select * from Direccion", conn)
        Dim daCorreo As New SqlDataAdapter( _
        "select * from Correo", conn)
        Dim daTelefono As New SqlDataAdapter( _
        "select * from Telefonos", conn)

        daPc.Fill(ds, "PersonasContacto")
        daDireccion.Fill(ds, "Direccion")
        daCorreo.Fill(ds, "Correo")
        daTelefono.Fill(ds, "Telefonos")

        Dim strXmlDS As String = ds.GetXml()
        txtXML.Text = ""
        txtXML.Text = strXmlDS

    End Sub

    Protected Sub btnVariasTablasAnidado_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnVariasTablasAnidado.Click
        Dim conn As New SqlConnection("Data Source=TERNURITA;Initial Catalog=AgendaBd;Persist Security Info=True;User ID=daci;Password=daci2009")
        Dim ds As New DataSet()
        Dim daPc As New SqlDataAdapter( _
        "select * from PersonaContacto", conn)
        Dim daDireccion As New SqlDataAdapter( _
        "select * from Direccion", conn)
        Dim daCorreo As New SqlDataAdapter( _
        "select * from Correo", conn)
        Dim daTelefono As New SqlDataAdapter( _
        "select * from Telefonos", conn)

        daPc.Fill(ds, "PersonaContacto")
        daDireccion.Fill(ds, "Direccion")
        daCorreo.Fill(ds, "Correo")
        daTelefono.Fill(ds, "Telefonos")

        Dim parentCol As DataColumn = _
        ds.Tables("PersonaContacto").Columns("idpersona")
        Dim childCol As DataColumn = _
        ds.Tables("Direccion").Columns("idpersona")
        Dim dr As New DataRelation _
        ("PersonaDireccion", parentCol, childCol)
        dr.Nested = True
        ds.Relations.Add(dr)

        Dim parentCol2 As DataColumn = _
        ds.Tables("PersonaContacto").Columns("idpersona")
        Dim childCol2 As DataColumn = _
        ds.Tables("Correo").Columns("idpersona")
        Dim dr2 As New DataRelation _
        ("PersonaCorreo", parentCol2, childCol2)
        dr2.Nested = True
        ds.Relations.Add(dr2)

        Dim parentCol3 As DataColumn = _
        ds.Tables("PersonaContacto").Columns("idpersona")
        Dim childCol3 As DataColumn = _
        ds.Tables("Telefonos").Columns("idpersona")
        Dim dr3 As New DataRelation _
        ("PersonaTelefonos", parentCol3, childCol3)
        dr3.Nested = True
        ds.Relations.Add(dr3)

        Dim strXmlDS As String = ds.GetXml()
        txtXML.Text = ""
        txtXML.Text = strXmlDS
    End Sub
End Class
