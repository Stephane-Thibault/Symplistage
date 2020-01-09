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
            InterfaceFurtive();
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            AjouterUtilisateurs();
        }

        protected void btnModifierStages_Click(object sender, EventArgs e)
        {
            ModifierUtilisateurs();
        }

        protected void btnLister_Click(object sender, EventArgs e)
        {
            ListerUtilisateursApparaitre();
        }

        protected void btnListerContinuer_Click(object sender, EventArgs e)
        {
            ListerUtilisateurs();
        }

        private void AjouterUtilisateurs()
        {
            ddlAjouter.Visible = true;
        }

        private void ModifierUtilisateurs()
        {
            ddlModifier.Visible = true;

            if (ddlModifier.CausesValidation == true)
            {
                if (ddlListerInformations.Text == "Stagiaire")
                {
                    GridModifierStagiaire.Visible = true;
                }
                else
                {
                    GridModifierSuperviseur.Visible = true;
                }
            }
        }

        private void ListerUtilisateursApparaitre()
        {
            ddlListerInformations.Visible = true;
            btnListerContinuer.Visible = true;
        }
        
        private void ListerUtilisateurs()
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

        private void InterfaceFurtive()
        {
            ddlAjouter.Visible = false;
            ddlModifier.Visible = false;
            ddlListerInformations.Visible = false;
            GridAjouterStage.Visible = false;
            GridAjouterSuperviseur.Visible = false;
            GridModifierStagiaire.Visible = false;
            GridModifierSuperviseur.Visible = false;
            btnListerContinuer.Visible = false;
        }

        private void VerifierGrade()
        {
            if (Session["gradeUtilisateurEnCours"] == "Superviseur")
            {
                //Retirer le choix superviseur de ddlListerInformations pour pas que l'utilisateur y ait accès.

            }

            else
            {
                //Retirer le choix stagiaire de ddlListerInformations pour pas que l'utilisateur y ait accès.
            }
        }

        //PAS ENCORE TERMINÉE
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
    }
}