using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Espacios de Nombres JENA

using com.hp.hpl.jena.ontology;
using com.hp.hpl.jena.query;
using com.hp.hpl.jena.rdf.model;
using com.hp.hpl.jena.util;
using com.hp.hpl.jena.util.iterator;

// Espacio de nombre D2RQ
using de.fuberlin.wiwiss.d2rq;

 

public partial class _Default : System.Web.UI.Page 
{

    OntModel m;

    protected void Page_Load(object sender, EventArgs e)
    {
        string rutaDirActual = System.AppDomain.CurrentDomain.BaseDirectory;

        string rutaRelOwl = @"Ejemplo_OWL\Generaciones.owl";

        string rutaOwl = Path.Combine(rutaDirActual, rutaRelOwl);

        rutaOwl = "file:///" + rutaOwl;


        m = ModelFactory.createOntologyModel(OntModelSpec.OWL_DL_MEM);
        m.read(rutaOwl);
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

                string consulta =   "PREFIX gene: <http://www.owl-ontologies.com/Ontology1244598154.owl#> " +
                            "SELECT ?nombre  " +
                            "WHERE  {  " +
                            "   ?persona gene:tieneHijo gene:JUAN. " +
                            "   ?persona gene:tieneNombre ?nombre. " +                            
                            "}";
        

        Query query = QueryFactory.create(consulta);
        QueryExecution qexec = QueryExecutionFactory.create(query, m);
        ResultSet resultados = qexec.execSelect();

        Label1.Text = "";

        while (resultados.hasNext())
        {
         
            QuerySolution soln = resultados.nextSolution();
            Label1.Text += soln.getResource("nombre").getLocalName() + "<br/>";                    
           
        }

        qexec.close();




    }
    }
