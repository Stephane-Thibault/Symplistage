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
            AffichageDesDonnees();
        }

        protected void btnQuitter_Click(object sender, EventArgs e)
        {
            Quitter();
        }

        private void AffichageDesDonnees()
        {
            Stagiaire stagiaireActuel = Session["stagiaireActuel"] as Stagiaire;
        }

        private void Quitter()
        {
            if (Session["gradeUtilisateurEnCours"] == "Superviseur")
            {
                Response.Redirect("Utilisateur.aspx");
            }
            else
            {
                Response.Redirect("Acceuil.aspx");
            }
        }
    }
}