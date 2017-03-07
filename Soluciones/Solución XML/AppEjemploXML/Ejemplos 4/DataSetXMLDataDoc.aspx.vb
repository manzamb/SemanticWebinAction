Imports System.Xml
Imports System.Xml.Xsl
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO

Partial Class Ejemplo_4_DataSetXMLDataDoc
    Inherits System.Web.UI.Page

    Protected Sub cargarxmlaxmldtc_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cargarxmlaxmldtc.Click
        Dim objXmlDataDoc As New XmlDataDocument()
        'objXmlDataDoc.Load(Server.MapPath("~/App_Data/ListaPcXMLDataDoc.xml"))
        objXmlDataDoc.DataSet.ReadXml(Server.MapPath("~/App_Data/ListaPcXMLDataDoc.xml"))

        grvContactos.DataSource = objXmlDataDoc.DataSet
        grvContactos.DataBind()

    End Sub

    Protected Sub btncargardsaxmldtc_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncargardsaxmldtc.Click
        Dim conn As New SqlConnection("Data Source=TERNURITA;Initial Catalog=AgendaBd;Persist Security Info=True;User ID=daci;Password=daci2009")
        Dim ds As New DataSet()
        Dim da As New SqlDataAdapter( _
        "select * from ListaPersonasContacto", conn)
        da.Fill(ds, "PersonasContacto")

        Dim objXmlDataDoc As New XmlDataDocument(ds)
        objXmlDataDoc.DataSet.WriteXml(Server.MapPath("~/App_Data/ListaPcXMLDataDoc.xml"))
    End Sub

    Protected Sub btnAplicarTransformacion_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAplicarTransformacion.Click
        'Cargamos el XML y creamos el objeto xmldatadocument
        Dim objXmlDataDoc As New XmlDataDocument()
        objXmlDataDoc.DataSet.ReadXml(Server.MapPath("~/Ejemplos 2/HTML vs XML/Contacto.xml"))

        'Aplicacmos la tranformación
        Dim xslTran As New XslTransform
        xslTran.Load(Server.MapPath("~/Ejemplos 2/HTML vs XML/XSLContactos.xslt"))
        Dim writer As New XmlTextWriter _
        (Server.MapPath("~/Ejemplos 2/HTML vs XML/XSLContacTransCodigo.html"), _
         System.Text.Encoding.UTF8)
        xslTran.Transform(objXmlDataDoc, Nothing, writer)
        writer.Close()

        HyperLink1.Visible = True
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Cargar el archivo original en un Textbox
        txtXML.ReadOnly = True
        Dim objReader As System.IO.StreamReader
        objReader = File.OpenText(Server.MapPath("~/Ejemplos 2/HTML vs XML/Contacto.xml"))
        txtXML.Text = objReader.ReadToEnd
    End Sub
End Class
