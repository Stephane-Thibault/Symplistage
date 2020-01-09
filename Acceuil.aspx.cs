using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        BDGestionStages bd = new BDGestionStages();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnConnection_Click(object sender, EventArgs e)
        {
            RedirigerUtilisateur();
        }

        private void RedirigerUtilisateur()
        {
            Session.Clear();
            Session["gradeUtilisateurEnCours"] = ddlGrade.Text;

            if (ddlGrade.Text == "Étudiant")
            {
                Stagiaire nouveauStagiaire = new Stagiaire();

                try
                {
                    nouveauStagiaire = bd.GetStagiaire(Convert.ToInt32(txtId.Text));
                }

                catch (Exception e)
                {
                    Console.WriteLine(e);
                    throw new ArgumentException("L'identifiant entré n'existe pas.");
                }

                try
                {
                    if (txtMotPasse.Text == nouveauStagiaire.MotDePasse)
                        {
                            
                            Session.Add("stagiaireActuel", nouveauStagiaire);
                            Session.Add("identifiantDuStagiaire", nouveauStagiaire.Id);
                            Response.Redirect("ListerStages.aspx");
                        }
                }

                catch (Exception e)
                {
                    Console.WriteLine(e);
                    throw new ArgumentException("L'identifiant entré n'existe pas.");
                }
            }

            else if (ddlGrade.Text == "Superviseur")
            {
                Superviseur nouveauSuperviseur = new Superviseur();

                try
                {
                    nouveauSuperviseur = bd.GetSuperviseur(Convert.ToInt32(txtId.Text));
                }

                catch (Exception e)
                {
                    Console.WriteLine(e);
                    throw new ArgumentException("L'identifiant entré n'existe pas.");
                }

                Response.Redirect("Utilisateur.aspx");
            }

            else
            {
                Administrateur administrateur = new Administrateur();

                try
                {

                    administrateur = bd.GetAdministrateur();
                }

                catch (Exception e)
                {
                    Console.WriteLine(e);
                    throw new ArgumentException("L'identifiant entré n'est pas valide.");
                }

                try
                {
                    if (txtMotPasse.Text == administrateur.MotDePasse)
                    {
                        Response.Redirect("Utilisateur.aspx"); 
                    }
                }

                catch (Exception e)
                {
                    Console.WriteLine(e);
                    throw new ArgumentException("L'identifiant entré n'est pas valide.");
                }

                Response.Redirect("Utilisateur.aspx");
            }
        }
    }
}