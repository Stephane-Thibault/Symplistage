using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region Boutons

        protected void btnQuitter_Click(object sender, EventArgs e)
        {
            AjouterOuModifierUnStageEtRediriger();
        }

        #endregion

        #region Fonctions principales

        private void AjouterOuModifierUnStageEtRediriger()
        {
            if((string)Session["elementAAjouter"] == "Stage")
            {
                try
                {
                    Stage nouveauStage = new Stage();
                    nouveauStage.Titre = this.txtTitre.Text;
                    nouveauStage.Début = Convert.ToDateTime(this.txtDateDebut.Text);
                    nouveauStage.Fin = Convert.ToDateTime(this.txtDateFin.Text);
                    nouveauStage.Commentaire = this.txtCommentaire.Text;
                    nouveauStage.SupersiveurId = Convert.ToInt32(txtSuperviseurId.Text);
                    nouveauStage.StagiaireId = Convert.ToInt32(txtStagiaireId.Text);

                    BDGestionStages bd = new BDGestionStages();
                    bd.Ajouter(nouveauStage, nouveauStage.SupersiveurId, nouveauStage.StagiaireId);
                    bd.Sauvegarder();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                    throw new ArgumentException("Erreur lors de la creation du stage.");
                }
            }
            else if ((string)Session["elementAModifier"] == "Stage")
            {
                try
                {
                    BDGestionStages bd = new BDGestionStages();
                    //bd.GetStage(int id)
                    //getStage dans db...
                    Stage nouveauStage = new Stage();
                    nouveauStage.Titre = this.txtTitre.Text;
                    nouveauStage.Début = Convert.ToDateTime(this.txtDateDebut.Text);
                    nouveauStage.Fin = Convert.ToDateTime(this.txtDateFin.Text);
                    nouveauStage.Commentaire = this.txtCommentaire.Text;
                    nouveauStage.SupersiveurId = Convert.ToInt32(txtSuperviseurId.Text);
                    nouveauStage.StagiaireId = Convert.ToInt32(txtStagiaireId.Text);

                    
                    bd.Ajouter(nouveauStage, nouveauStage.SupersiveurId, nouveauStage.StagiaireId);
                    bd.Sauvegarder();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                    throw new ArgumentException("Erreur lors de la creation du stage.");
                }
            }
            Response.Redirect("Utilisateur.aspx");
        }

        #endregion
    }
}