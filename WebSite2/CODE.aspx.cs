using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
public partial class CODE : System.Web.UI.Page
{// или по другому
    Dictionary<string, List<string>> stranibyGorod = new Dictionary<string, List<string>>();
    protected void Page_Load(object sender, EventArgs e)
         
    {
      
        stranibyGorod.Add("Россия", new List<string> { "орен", "мск-ва", "питер" });
      stranibyGorod.Add("США", new List<string> { "вашин", "Нью-Йорк ", "лос-Анж" });
        //this.Btn_ok.Click += new EventHandler(Btn_ok.Click);
        if (!this.IsPostBack)
        {DropDownList_contr.Items.Add("");
            {
                foreach (string contri in stranibyGorod.Keys)
                    DropDownList_contr.Items.Add(contri);
                UpdateCitiList();
            }
        }
    }

    protected void Btn_ok_Click(object sender, EventArgs e)
    { this.Btn_ok.Text = this.Btn_ok.Text+" ⛄ Din ⛄";
    }
   protected void UpdateCitiList()
    { string contry = DropDownList_contr.SelectedValue;
        Label1.Text = DropDownList_contr.SelectedValue;
        if (!string.IsNullOrEmpty(contry))    // и если не пустая
        {
            List<string> cities = stranibyGorod[contry];
            if(cities!=null && cities.Count!=0)
            {  DropDownList_gorod.Enabled = true;
                DropDownList_gorod.Items.Clear();
                foreach( string city in cities)
                 DropDownList_gorod.Items.Add(city); 
            }
        }
        else
        {
            DropDownList_gorod.Items.Clear();
            DropDownList_gorod.Enabled = false;
        }
    }
        
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // object[] masPOArray = { {5 }, { 10} };
        ListItem listItem_my = new ListItem();//<List<int>>(); // new ListItem();
        //result = new List<List<int>>();
        Label1.Text = DropDownList1.SelectedValue;
        object[,] masPOArray = { {"Оренбургэнерго", "Восточное ПО" }, { "Оренбургэнерго", "Западное ПО" }, 
            { "Оренбургэнерго","Орское ПО" }, { "Оренбургэнерго","Оренбургское ПО" },
            { "Оренбургэнерго","ПО Информэнергосвязь" }, { "Оренбургэнерго","Северное ПО" },
            { "Оренбургэнерго","Центральное ПО" }, { "Оренбургэнерго", "ИА Оренбургэнерго" }  };
        
        if (DropDownList1.SelectedIndex == 1)
        {        // Выведем в список тип каждого члена массива
            for (int ii = 0; ii < masPOArray.Length / masPOArray.Rank; ii++)
                DropDownList2.Items.Add(masPOArray[ii,1].ToString() );// masPOArray[0, 1].ToString());
        // (me.ToString() == "Оренбургэнерго")
            //  masPOArray={{"Ковылкинское ПО", "rv" }; { "Комсомольское ПО","123"} };
            //"Ковылкинское ПО"
            //"Комсомольское ПО"
            //"Краснослободское ПО"
            //"Саранское ПО"
            //"ИА Мордовэнерго"
       }
    }

    protected void DropDownList_contr_SelectedIndexChanged(object sender, EventArgs e)
    { 
        UpdateCitiList();
    }
}