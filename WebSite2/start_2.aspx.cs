using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class start_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.Master is MyMasterPage)

            ((MyMasterPage)Master).info = "Клавдия!!!";
    }

    protected void Button_ok_Click(object sender, EventArgs e)
    {
            ((MyMasterPage)Master).info = this.TxtBox_ima.Text;
    }
}