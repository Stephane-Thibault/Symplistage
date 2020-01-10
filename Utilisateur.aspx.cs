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

        protected void btnAjouterContinuer_Click(object sender, EventArgs e)
        {
            RedirigerVersElementAAjouter();
        }

        protected void btnModifierContinuer_Click(object sender, EventArgs e)
        {
            RedirigerVersElementAModifier();
        }

        private void AjouterUtilisateurs()
        {
            lblControlErreurAjouter.Text = "";
            ddlAjouter.Visible = true;
            btnAjouterContinuer.Visible = true;
            btnModifierContinuer.Visible = false;
        }

        private void ModifierUtilisateurs()
        {
            InterfaceFurtive();
            ddlModifier.Items.Clear();
            if((string)Session["gradeUtilisateurEnCours"] == "Administrateur")
            {
                ddlModifier.Items.Add("Stagiaire");
                ddlModifier.Items.Add("Superviseur");
            }
            else
            {
                ddlModifier.Items.Add("Stagiaire");
            }
            ddlModifier.Visible = true;
            btnModifierContinuer.Visible = true;
        }

        private void RedirigerVersElementAModifier()
        {
            Session["elementAModifier"] = null;

            if(ddlModifier.Text == "Superviseur" && (string)Session["gradeUtilisateurEnCours"] == "Administrateur")
            {
                Session["elementAModifier"] = "Superviseur";
                Response.Redirect("AjouterModifierStagiaireSuperviseur.aspx");
            }
            else if (ddlModifier.Text == "Stagiaire" && 
                    ((string)Session["gradeUtilisateurEnCours"] == "Administrateur" ||
                    (string)Session["gradeUtilisateurEnCours"] == "Superviseur"))
            {
                Session["elementAModifier"] = "Stagiaire";
                Response.Redirect("AjouterModifierStagiaireSuperviseur.aspx");
            }
        }

        private void InterfaceFurtive()
        {
            ddlAjouter.Visible = false;
            ddlModifier.Visible = false;
            GridModifierStagiaire.Visible = false;
            GridModifierSuperviseur.Visible = false;
            btnListerContinuer.Visible = false;
            btnAjouterContinuer.Visible = false;
            btnModifierContinuer.Visible = false;
        }

        private void RedirigerListerUtilisateur()
        {
            if ((string)Session["gradeUtilisateurEnCours"] == "Superviseur")
            {
                if (ddlListerStageOuStagiaires.SelectedValue == "Stages")
                {
                    GridListerStagiaires.Visible = true;
                }
                else if(ddlListerStageOuStagiaires.SelectedValue == "Stagiaires")
                {
                    Session.Add("ListerUtilisateur", "stagiaire");
                    Response.Redirect("ListerSuperviseurEtStagiaire.aspx");
                }
            }

            else
            {
                if (ddlListerStageOuStagiaires.SelectedValue == "Stagiaires")
                {
                    Session.Add("ListerUtilisateur", "stagiaire");
                    Response.Redirect("ListerSuperviseurEtStagiaire.aspx");
                }
                else if(ddlListerStageOuStagiaires.SelectedValue == "Superviseurs")
                {
                    Session.Add("ListerUtilisateur", "superviseur");
                    Response.Redirect("ListerSuperviseurEtStagiaire.aspx");
                }
                else
                {
                    Console.WriteLine("Vous n'ètes pas authorisé à accéder à ce contenu.");
                }
            }
        }

        private void RedirigerVersElementAAjouter()
        {
            Session["elementAAjouter"] = null;
            if (ddlAjouter.Text == "Superviseur" && (string)Session["gradeUtilisateurEnCours"] == "Administrateur")
            {
                Session.Add("elementAAjouter", "Superviseur");
                Response.Redirect("AjouterModifierStagiaireSuperviseur.aspx");
            }
            else if (ddlAjouter.Text == "Stagiaire" && (string)Session["gradeUtilisateurEnCours"] == "Administrateur")
            {
                Session.Add("elementAAjouter", "Stagiaire");
                Response.Redirect("AjouterModifierStagiaireSuperviseur.aspx");
            }
            else if (ddlAjouter.Text == "Stage" && (string)Session["gradeUtilisateurEnCours"] == "Superviseur")
            {
                Session.Add("elementAAjouter", "Stage");
                Response.Redirect("AjouterModifierStage.aspx");
            }
            else
            {
                lblControlErreurAjouter.Text = "Action impossible selon vos droits.";
                InterfaceFurtive();
            }
        }
        
        private void ListerUtilisateurs()
        {
            Session.Add("ListerUtilisateur", "superviseur");
            Response.Redirect("ListerSuperviseurEtStagiaire.aspx");
        }

        private void AfficherDdlLister()
        {
            ddlListerStageOuStagiaires.Visible = true;
            btnListerContinuer.Visible = true;

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