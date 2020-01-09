using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            DécouvrirOptions();
        }

        protected void btnModifierStages_Click(object sender, EventArgs e)
        {
            DécouvrirOptions();
        }

        protected void btnLister_Click(object sender, EventArgs e)
        {
            DécouvrirOptions();
        }

        protected void btnListerUtilisateur_Click(object sender, EventArgs e)
        {
            ListerUtilisateur();
        }

        private void RedirigerUtilisateur()
        {

            if (ddlAjouter.Text == "Stage")
            {
                GridAjouterStage.Visible = true;

                
            }

            else if (ddlModifier.Text == "Stage")
            {
                
            }

            else if (ddlAjouter.Text == "Stagiaire" || ddlModifier.Text == "Stagiaire" || ddlListerInformations.Text == "Stagiaire")
            {

            }

            else
            {
                
            }
        }

        protected void GridStagiaire_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void DécouvrirOptions()
        {
            ddlAjouter.Visible = false;
            ddlModifier.Visible = false;
            ddlListerInformations.Visible = false;
            GridAjouterStage.Visible = false;
            GridAjouterSuperviseur.Visible = false;
            GridModifierStagiaire.Visible = false;
            GridModifierSuperviseur.Visible = false;
//            GridListerStagiaires.Visible = false;
//            GridListerSuperviseurs.Visible = false;


            if (btnAjouter.CausesValidation == true)
            {
                ddlAjouter.Visible = true;
            }

            else if (btnModifier.CausesValidation == true)
            {
                ddlModifier.Visible = true;
            }

            else
            {
                ddlListerInformations.Visible = true;
            }
        }

        private void ListerUtilisateur()
        {
            if (ddlListerInformations.Text == "Stagiaire")
            {
                Session.Add("ListerUtilisateur", "stagiaire" );
                Response.Redirect("ListerSuperviseurEtStagiaire.aspx");
            }

            else
            {
                Session.Add("ListerUtilisateur", "superviseur");
                Response.Redirect("ListerSuperviseurEtStagiaire.aspx");
            }
        }
    }
}