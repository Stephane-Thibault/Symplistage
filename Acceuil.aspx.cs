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
            //COMMENTAIIIRE
        }

        protected void btnConnection_Click(object sender, EventArgs e)
        {
            RedirigerUtilisateur();
        }

        private void RedirigerUtilisateur()
        {
            
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

                Response.Redirect("Utilisateur.aspx");
            }

            else
            {
                Administrateur nouveauAdministrateur = new Administrateur();

                Response.Redirect("Utilisateur.aspx");
            }
        }
    }
}