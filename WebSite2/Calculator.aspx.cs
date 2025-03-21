using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calculator : System.Web.UI.Page
{ public const string ERROR_Massage="Неверный данные!";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_ravno_Click(object sender, EventArgs e)
    {
        try { 
        double x1 = double.Parse(TextBoxNum1.Text);
        double x2 = double.Parse(TextBoxNum2.Text);
        double x=0;
        switch (DropDownList_oper.SelectedValue)
        {
            case "*": x = x1 * x2; break;
            case "/": x = x1 / x2; break;
            case "+": x = x1 + x2; break;
            case "-": x = x1 - x2; break;
        }
        Label_Rez.Text = x.ToString();
        }
        catch (FormatException ex)
        {
            Label_Rez.Text ="Ого "+ ex.Message;
        }
        catch (DivideByZeroException ex)
        { Label_Rez.Text = ex.Message; }

        /////////////////////////////
        //int Rez = 0;
        //if (DropDownList_oper.Text == "*")
        //    Rez = Convert.ToInt16(TextBoxNum1.Text) * Convert.ToInt16(TextBoxNum2.Text);
        //else if (DropDownList_oper.Text == "/")
        //    Rez = Convert.ToInt16(TextBoxNum1.Text) / Convert.ToInt16(TextBoxNum2.Text);
        //else if (DropDownList_oper.Text == "+")
        //    Rez = Convert.ToInt16(TextBoxNum1.Text) + Convert.ToInt16(TextBoxNum2.Text);
        //else if (DropDownList_oper.Text == "-")
        //    Rez = Convert.ToInt16(TextBoxNum1.Text) - Convert.ToInt16(TextBoxNum2.Text);

        //Label_Rez.Text = Rez.ToString();
    }
}