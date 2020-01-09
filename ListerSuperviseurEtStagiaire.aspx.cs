using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

//        protected void btnAfficherSagiaires_Click(object sender, EventArgs e)
//        {
//            AfficherListeStagiaires();
//        }
//
//        protected void btnAfficherSuperviseur_Click(object sender, EventArgs e)
//        {
//            AfficherListeSuperviseurs();
//        }

        protected void btnQuitter_Click(object sender, EventArgs e)
        {
            Response.Redirect("Utilisateur.aspx");
        }

//        private void AfficherListeSuperviseurs()
//        {
//            GridSuperviseur.Visible = true;
//            GridStagiaires.Visible = false;
//        }
//
//        private void AfficherListeStagiaires()
//        {
//            GridSuperviseur.Visible = false;
//            GridStagiaires.Visible = true;
//        }

        private void AfficherChoixDeLUtilisateur()
        {
            if (Session["ListerUtilisateur"] == "stagiaire")
            {
                GridSuperviseur.Visible = false;
                GridStagiaires.Visible = true;
            }

            else
            {
                GridSuperviseur.Visible = true;
                GridStagiaires.Visible = false;
            }
            
        }
    }
}