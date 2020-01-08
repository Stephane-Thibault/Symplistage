using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BDGestionStages bd = new BDGestionStages();

            Stagiaire stagiaireActuel = Session["stagiaireActuel"] as Stagiaire;
            

//            ListView1.GetDefaultValues("id", LinqDataSource1 as object);
//            LinqDataSource1.InsertParameters[0].DefaultValue = StateItems[Session["stagiaireActuel"]].ToString;
//                WhereParameters.UpdateValues(DefaultValue, "1");

        }

        protected void btnQuitter_Click(object sender, EventArgs e)
        {
            
        }
    }
}