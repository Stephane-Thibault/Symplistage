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
            //test à effacer plus tard
            Session["gradeUtilisateurEnCours"] = "Superviseur";

            //Important ça reste là
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
            InterfaceFurtive();
            AfficherDdlLister();
        }

        protected void btnListerContinuer_Click(object sender, EventArgs e)
        {
            RedirigerListerUtilisateur();
        }

        protected void btnQuitter_Click(object sender, EventArgs e)
        {
            Response.Redirect("Acceuil.aspx");
        }






        private void AjouterUtilisateurs()
        {
            ddlAjouter.Visible = true;
            btnAjouterContinuer.Visible = true;
            btnModifierContinuer.Visible = false;
        }

        private void ModifierUtilisateurs()
        {
            ddlModifier.Visible = true;

            if (ddlModifier.CausesValidation == true)
            {
                if (ddlModifier.Text == "Stagiaire")
                {
                    GridModifierStagiaire.Visible = true;
                }
                else
                {
                    GridModifierSuperviseur.Visible = true;
                }
            }
        }




        private void RedirigerListerUtilisateur()
        {
            if (Session["gradeUtilisateurEnCours"] == "Superviseur")
            {
                if (ddlListerStageOuStagiaires.SelectedValue == "Stagiaires")
                {
                    GridListerStagiaires.Visible = true;
                }
                else
                {
                    Session.Add("ListerUtilisateur", "stagiaire");
                    Response.Redirect("ListerSuperviseurEtStagiaire.aspx");
                }
            }
        }



        
        private void ListerUtilisateurs()
        {
            Session.Add("ListerUtilisateur", "superviseur");
            Response.Redirect("ListerSuperviseurEtStagiaire.aspx");
        }

        private void AfficherDdlLister()
        {
            if (Session["gradeUtilisateurEnCours"] == "Administrateur")
            {
                Session.Add("ListerUtilisateur", "superviseur");
                Response.Redirect("ListerSuperviseurEtStagiaire.aspx");
            }

            else
            {
                ddlListerStageOuStagiaires.Visible = true;
                btnListerContinuer.Visible = true;
            }
        }




        private void InterfaceFurtive()
        {
            ddlAjouter.Visible = false;
            ddlModifier.Visible = false;
            ddlListerStageOuStagiaires.Visible = false;
            GridModifierStagiaire.Visible = false;
            GridModifierSuperviseur.Visible = false;
            GridListerStagiaires.Visible = false;
            btnListerContinuer.Visible = false;
        }

        protected void GridListerStagiaires_SelectedIndexChanged(object sender, EventArgs e)
        {
            string nomStagiaire = GridListerStagiaires.SelectedRow.Cells[1].Text;

            BDGestionStages bd = new BDGestionStages();

            foreach (Stagiaire stagiaire in bd.GetAllStagiaires())
            {
                if ( nomStagiaire == stagiaire.Nom)
                {
                    Session.Add("identifiantDuStagiaire", stagiaire.Id);
                    Response.Redirect("ListerStages.aspx");
                }
            }
        }
    }
}