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

        }

        private void RedirigerUtilisateur()
        {
            
            if (ddlGrade.Text == "Étudiant")
            {
                Stagiaire nouveauStagiaire = new Stagiaire();

                try
                {
                    bd.GetStagiaire(Convert.ToInt32(txtId.Text));
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                    throw new ArgumentException("L'identifiant entré n'existe pas.");
                }

                if (txtId.Text == nouveauStagiaire.MotDePasse)
                {
                    //Magic happens here.
                }

                Response.Redirect("ListerStages.aspx");
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