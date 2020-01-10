using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EcrireMiseEnContexte();
        }

        #region Boutons

        protected void btnQuitter_Click(object sender, EventArgs e)
        {
            ValiderFormulaireEtQuitter();
        }

        #endregion

        #region Fonctions principales

        private void EcrireMiseEnContexte()
        {
            if ((string)Session["elementAAjouter"] == "Stagiaire" || (string)Session["elementAAjouter"] == "Superviseur")
            {
                lblTitre.Text = $"Veuillez ajouter un {(string)Session["elementAAjouter"]} :";
            }
            else
            {
                lblTitre.Text = "";
            }
        }

        private void ValiderFormulaireEtQuitter()
        {
            if((string)Session["elementAAjouter"] == "Stagiaire")
            {
                try
                {
                    Stagiaire stagiaireAAjouter = new Stagiaire();
                    string[] prenomEtNom = this.txtNom.Text.Split(' ');
                    stagiaireAAjouter.Nom = prenomEtNom[0] + " " + prenomEtNom[1];
                    stagiaireAAjouter.Téléphone = this.txtTelephone.Text;
                    stagiaireAAjouter.Courriel = this.txtCourriel.Text;
                    stagiaireAAjouter.NomUtilisateur = (prenomEtNom[0][0] + prenomEtNom[1]).ToLower();
                    stagiaireAAjouter.MotDePasse = "1234";

                    BDGestionStages bd = new BDGestionStages();
                    bd.Ajouter(stagiaireAAjouter);
                    bd.Sauvegarder();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                    throw new ArgumentException("Erreur lors de la creation du stagiaire.");
                }

            }
            else if ((string)Session["elementAAjouter"] == "Superviseur")
            {
                try
                {
                    Superviseur superviseurAAjouter = new Superviseur();
                    string[] prenomEtNom = this.txtNom.Text.Split(' ');
                    superviseurAAjouter.Nom = prenomEtNom[0] + " " + prenomEtNom[1];
                    superviseurAAjouter.Téléphone = this.txtTelephone.Text;
                    superviseurAAjouter.Courriel = this.txtCourriel.Text;
                    superviseurAAjouter.NomUtilisateur = (prenomEtNom[0][0] + prenomEtNom[1]).ToLower();
                    superviseurAAjouter.MotDePasse = "1234";

                    BDGestionStages bd = new BDGestionStages();
                    bd.Ajouter(superviseurAAjouter);
                    bd.Sauvegarder();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                    throw new ArgumentException("Erreur lors de la creation du superviseur.");
                }
            }
            else
            {
                throw new ArgumentException("Erreur");
            }
            Response.Redirect("Utilisateur.aspx");
        }
        #endregion
    }
}