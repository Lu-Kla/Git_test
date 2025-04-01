using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MultiControl : System.Web.UI.Page
{ private  int txtBoxCou=0;
    protected void Page_PreLoad(object sender, EventArgs e)
    {
        //при повторном обращении
        if (this.IsPostBack)
            txtBoxCou = (int)ViewState["textBoxCount"];
    }
    protected void Page_Load(object sender, EventArgs e)
    {}
    protected void Btn_eche_Click(object sender, EventArgs e)
    { txtBoxCou++; }

    protected void Page_LoadComplete(object sender, EventArgs e)
    {
        for (int i = 1; i < txtBoxCou; i++)
            this.Panel1.Controls.Add(new TextBox()); 
        ViewState["textBoxCount"] = txtBoxCou;
    }
    //////protected void Page_Load(object sender, EventArgs e)
    //////{
    //////    if (!this.IsPostBack)
    //////        ViewState["textBoxcount"] = 0;
    //////}

    //////protected void Btn_eche_Click(object sender, EventArgs e)
    //////{
    //////     this.Panel1.Controls.Add(new TextBox());
    //////    ViewState["textBoxcount"] = (int)ViewState["textBoxcount"] + 1;
    //////}

    //////protected void Page_LoadComplete(object sender, EventArgs e)
    //////{
    //////   int n =(int) ViewState["textBoxcount"] ;
    //////    for(int i=1;i<n; i++)
    //////    { this.Panel1.Controls.Add(new TextBox()); }
    //////}
}