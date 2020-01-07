using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Stagiaire stagiaireActuel = Session["stagiaireActuel"] as Stagiaire;

            ListView1. = new ListView();

            ListView1.ID.Add(stagiaireActuel.Id);

            foreach (Object stages in ListView1.Items)
            {
                ListView1.
            }
        }

        protected void btnQuitter_Click(object sender, EventArgs e)
        {

        }
    }
}