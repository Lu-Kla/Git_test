using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Specialist;

public partial class PersonCode : System.Web.UI.UserControl
{
    public event EventHandler Click;
    public string Color { get; set; }
    private Person person;
   
    public Person Person {
        get {
            if (person == null)
                  person = new Person(Txt_name.Text.Trim(), 
                      UInt16.Parse(Txt_age.Text));
         return person; }
        set{ person = value;
            UpdatePersInf();
             }
    }
    public void UpdatePersInf()
    { if (person != null)
        { Txt_name.Text = person.Name;
          Txt_age.Text = person.Age.ToString();
          Txt_email.Text = person.Email;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {        UpdatePersInf();    }

    protected void Btn_ok_Click(object sender, EventArgs e)
    {
                Person.Name = Txt_name.Text.Trim();
        Person.Age = UInt16.Parse(Txt_age.Text);
        Person.Email = Txt_email.Text.Trim();
        if (Click != null)
            Click(this, new EventArgs());//(this, new EventArgs()){
        //this.Panel1.Controls.Add(new TextBox());
    }

}