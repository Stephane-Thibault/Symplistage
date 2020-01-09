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
        protected void Page_Load(object sender, EventArgs e){

            Stagiaire stagiaireActuel = Session["stagiaireActuel"] as Stagiaire;

            VerificationUtilisateur();
        }

        protected void btnQuitter_Click(object sender, EventArgs e)
        {
            Response.Redirect("Acceuil.aspx");
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            AjouterUnStage();
        }

        private void VerificationUtilisateur()
        {
            if (Session["gradeUtilisateurEnCours"] == "Superviseur")
            {
                btnAjouter.Enabled = true;
                btnModifier.Enabled = true;
            }
            else
            {
                btnAjouter.Enabled = false;
                btnModifier.Enabled = false;
            }
        }

        private void AjouterUnStage()
        {

        }
    }
}