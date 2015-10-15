
using System;
using System.Web;


public class CustomHttpModule : IHttpModule
{

    public CustomHttpModule() { }

    public virtual void Init(HttpApplication application)
    {
        application.BeginRequest += new EventHandler(Application_BeginRequest);

        application.EndRequest += new EventHandler(Application_EndRequest);
    }


    public virtual void Application_BeginRequest(object sender, EventArgs e)
    {
        string filePath = (sender as HttpApplication).Context.Request.FilePath;
        (sender as HttpApplication).Context.Response.Write("<h2>Starting page: " + filePath + "</h2>");

    }

    public virtual void Application_EndRequest(object sender, EventArgs e)
    {

        string filePath = (sender as HttpApplication).Context.Request.FilePath;
        (sender as HttpApplication).Context.Response.Write("<h2>Ending page: " + filePath + "</h2>");
    }

    public void Dispose() { }

}

























