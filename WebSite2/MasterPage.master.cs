﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyMasterPage : System.Web.UI.MasterPage
{ public string info
    {   get {return LabelAdd.Text; }
        set { LabelAdd.Text=value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {//this.Page=

    }
}
