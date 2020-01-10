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

        #region Boutons

        protected void btnQuitter_Click(object sender, EventArgs e)
        {
            Quitter();

        }

        #endregion

        #region Fonction d'affichage

        private void AffichageDesDonnees()
        {
            Stagiaire stagiaireActuel = Session["stagiaireActuel"] as Stagiaire;
        }

        #endregion

        #region Fonctions principales

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

        #endregion
    }
}