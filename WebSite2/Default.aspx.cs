using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
//using System.Web.UI.HtmlControls;   // 2 больших отличия
using System.Web.UI.WebControls;// более шире представлены, функ преимущ-ва: в таблицу какую нибудь или осущ проверку
using System.Drawing;

public partial class _Default_my : System.Web.UI.Page
{
    public string r = "";
    protected void Page_Load(object sender, EventArgs e)
    {  
        if (!this.IsPostBack)
        { this.ViewState["visitCounter"] = 0; } //Cчетчик
                else { this.ViewState["visitCounter"] = (int)this.ViewState["visitCounter"] + 1; }
        LabelVisits.Text = this.ViewState["visitCounter"].ToString();
        if (this.Request["line-control"] != null)
            r =r+ this.Request["line-control"].ToString();// Request Обращаюсь к клиентскому контролу с помощью input ввели
       // LabelVisits.Text = (int)this.ViewState["visitcountener"] + 1;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = "";
        Name = "Привет, приятно познакомиться " + TextBoxUserName.Text;
         //HyperLinkMy.Text = Name;
        // или 
       // HyperLinkMy.Text = string.Format("привет дорогой {0}!", Name);
        
        html_servercontrol.Value = Name;
    }
    protected void But_red_Click(object sender, EventArgs e)
    {
        TextBoxUserName.ForeColor =Color.Red;
    }

}