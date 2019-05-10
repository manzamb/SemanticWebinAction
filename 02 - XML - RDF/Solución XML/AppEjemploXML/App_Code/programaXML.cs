using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ns_miejemplo;


/// <summary>
/// Descripción breve de miEjemploXML
/// </summary>
public class programaXML
{
    public programaXML()
    {
        var x = XMLHelper.ReadXml<lista>(@"C:\Users\manza\source\repos\SemanticWebinAction\02 - XML - RDF\Solución XML\AppEjemploXML\Ejemplos 2\03-xml/miejemploXML.xml");
        
    }
}