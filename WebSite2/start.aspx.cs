﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class start : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { if (this.Master is MyMasterPage)

            ((MyMasterPage)Master).info = "Люссси!";

    }
}