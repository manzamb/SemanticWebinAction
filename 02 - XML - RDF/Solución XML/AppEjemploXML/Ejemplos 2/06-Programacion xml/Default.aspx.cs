using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ns_miejemplo;

public partial class Ejemplos_2_Consumo_xml_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLeerXML_Click(object sender, EventArgs e)
    {
        var x = XMLHelper.ReadXml<lista>(@"C:\Users\manza\source\repos\SemanticWebinAction\02 - XML - RDF\Solución XML\AppEjemploXML\Ejemplos 2\03-xml\miejemploXML.xml");
        //foreach (xn in x)
        //{

        //}

    }
}