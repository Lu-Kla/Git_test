using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Specialist;

public partial class Persons : System.Web.UI.Page
{
    protected void preinit(object sender, EventArgs e) {  }

    protected void Page_Load(object sender, EventArgs e)
    {        if (!this.IsPostBack)
        
        foreach (Person p in Person.Getlist())
            ListBoxPerson.Items.Add(p.Name + " " + p.Age);
        ListBoxPerson.DataSource = Person.Getlist();
        // ListBoxPerson.DataBind();
        Lbl_vibor.Text = this.PersonCode1.Person.Name;
    }

   protected void Page_Init(object sender, EventArgs e)
    { if (!this.IsPostBack)
        {
            ListBoxPerson.DataSource = Person.Getlist();
             ListBoxPerson.DataBind();
            this.PersonCode1.Person = new Person("", 0);
           // Lbl_vibor.Text = this.PersonCode1.Person.Name.ToString();

        }
       // this.PersonCode1.Person = new Person(Lbl_vibor.Text, 0);
        this.PersonCode1.Click += new EventHandler(PersonCode1_Click);
    }

   protected void PersonCode1_Click(object sender, EventArgs e)
    {this.ListBoxPerson.DataBind();
        Lbl_vibor.Text = this.PersonCode1.Person.ToString();
     }

    protected void Btn_ok_Click(object sender, EventArgs e)
    {        UInt16 age;
        if (string.IsNullOrEmpty(TextBoxAge.Text)) // если не пусто
            ListBoxPerson.DataSource = Person.Getlist();
        else
        {   age = UInt16.Parse(TextBoxAge.Text.Trim());
            ListBoxPerson.DataSource = Person.Getlist(age);
        }
        ListBoxPerson.DataBind();
    }

    protected void ListBoxPerson_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.PersonCode1.UpdatePersInf();
        string activeChel = ListBoxPerson.SelectedValue;
        //напише=м с помощью линка
        Person selecPers =Person.Getlist().Where<Person>(p => p.ToString() == activeChel).Single<Person>();
        this.PersonCode1.Person = selecPers;
        this.PersonCode2.Person = Person.Getlist().Last();
    }
}