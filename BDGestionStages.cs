using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Diagnostics;

namespace TP2
{
    /// <summary>
    /// Petite classe permettant de cacher la BD.
    /// </summary>
    /// <example>
    /// BDGestionStages bd = new BDGestionStages();
    /// 
    /// Stagiaire c = bd.GetStagiaire(38);
    /// 
    /// Stage stg = new Stage();
    /// stg.Description = "Patates";
    /// stg.Prix = 2.5;
    /// 
    /// c.Stages.Add(stg);
    /// 
    /// bd.Sauvegarder();
    /// </example>
    public class BDGestionStages
    {
        /// <summary>
        /// Constructeur par défaut.
        /// </summary>
        public BDGestionStages()
        {
            this.m_BaseDeDonnées = new GestionStagesDataContext();
        }

        /// <summary>
        /// Pour sauvegarder toute modification faite
        /// à un stagiaire, un superviseur ou un stage.
        /// </summary>
        public void Sauvegarder()
        {
            this.m_BaseDeDonnées.SubmitChanges();
        }

        #region Stagiaire

        /// <summary>
        /// Pour ajouter un stagiaire dans la BD.
        /// </summary>
        /// <param name="p_Stagiaire">Objet à ajouter</param>
        public void Ajouter(Stagiaire p_Stagiaire)
        {
            Debug.Assert(p_Stagiaire != null, "p_Stagiaire doit être différent de null");

            this.m_BaseDeDonnées.Stagiaires.InsertOnSubmit(p_Stagiaire);
        }

        /// <summary>
        /// Retourne le Stagiaire dont l'identifiant est p_Id, ou
        /// null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_Id">Identifiant à rechercher</param>
        /// <returns>Un Stagiaire ou null</returns>
        public Stagiaire GetStagiaire(int p_Id)
        {
            return m_BaseDeDonnées.Stagiaires.SingleOrDefault(stagiaire => (stagiaire.Id == p_Id));
        }

        /// <summary>
        /// Retourne le stagiaire dont le nom d'utilisateur est 
        /// p_NomUtilisateur, ou null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_NomUtilisateur">Nom d'utilisateur</param>
        /// <returns>Un stagiaire ou null</returns>
        public Stagiaire GetStagiaire(string p_NomUtilisateur)
        {
            return m_BaseDeDonnées.Stagiaires.SingleOrDefault(stagiaire => (stagiaire.Nom == p_NomUtilisateur));
        }

        /// <summary>
        /// Retourne la liste de tous les stagiaires. 
        /// </summary>
        public IQueryable<Stagiaire> GetAllStagiaires()
        {
            return m_BaseDeDonnées.Stagiaires;
        }

        #endregion

        #region Superviseur

        /// <summary>
        /// Pour ajouter un superviseur dans la BD.
        /// </summary>
        /// <param name="p_Superviseur">Objet à ajouter</param>
        public void Ajouter(Superviseur p_Superviseur)
        {
            Debug.Assert(p_Superviseur != null, "p_Superviseur doit être différent de null");

            this.m_BaseDeDonnées.Superviseurs.InsertOnSubmit(p_Superviseur);
        }

        /// <summary>
        /// Retourne le Superviseur dont l'identifiant est p_Id, ou
        /// null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_Id">Identifiant à rechercher</param>
        /// <returns>Un Superviseur ou null</returns>
        public Superviseur GetSuperviseur(int p_Id)
        {
            return this.m_BaseDeDonnées.Superviseurs.SingleOrDefault(
                Superviseur => (Superviseur.Id == p_Id));
        }

        /// <summary>
        /// Retourne le superviseur dont le nom d'utilisateur est 
        /// p_NomUtilisateur, ou null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_NomUtilisateur">Nom d'utilisateur</param>
        /// <returns>Un superviseur ou null</returns>
        public Superviseur GetSuperviseur(string p_NomUtilisateur)
        {
            return this.m_BaseDeDonnées.Superviseurs.SingleOrDefault(Superviseur => (Superviseur.Nom == p_NomUtilisateur));
        }

        /// <summary>
        /// Retourne la liste de tous les superviseurs. 
        /// </summary>
        public IQueryable<Superviseur> GetAllSuperviseurs()
        {
            return this.m_BaseDeDonnées.Superviseurs;
        }

        #endregion

        #region Stage

        /// <summary>
        /// Pour ajouter un stage dans la BD.
        /// </summary>
        /// <param name="p_Stage">Objet à ajouter</param>
        /// <param name="p_SuperviseurId">Identifiant du superviseur</param>
        /// <param name="p_StagiaireId">Identifiant du stagiaire</param>
        public void Ajouter(Stage p_Stage, int p_SuperviseurId, int p_StagiaireId)
        {
            Debug.Assert(p_Stage != null, "p_Stage doit être différent de null");
            Debug.Assert(GetSuperviseur(p_SuperviseurId) != null, "Le superviseur doit exister");
            Debug.Assert(GetStagiaire(p_StagiaireId) != null, "Le stagiaire doit exister");

            //Faut s'assurer que il y a de la vérification qui se fait avant de créer un stage
            this.m_BaseDeDonnées.Stages.InsertOnSubmit(p_Stage);
        }

        /// <summary>
        /// Retourne le Stage dont l'identifiant est p_Id, ou
        /// null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_Id">Identifiant à rechercher</param>
        /// <returns>Un Stage ou null</returns>
        public Stage GetStage(int p_Id)
        {
            return this.m_BaseDeDonnées.Stages.SingleOrDefault(
                Stage =>(Stage.Id == p_Id));
        }

        /// <summary>
        /// Retourne la liste de tous les stages. 
        /// </summary>
        public IQueryable<Stage> GetAllStages()
        {
            return this.m_BaseDeDonnées.Stages;
        }

        #endregion

        #region Admin

        /// <summary>
        /// Retourne l'administrateur du site.
        /// </summary>
        /// <returns>L'admin</returns>
        public Administrateur GetAdministrateur()
        {
            return m_BaseDeDonnées.Administrateurs.SingleOrDefault();
        }

        #endregion


        /// <summary>
        /// BD sous-jacente.
        /// </summary>
        private GestionStagesDataContext m_BaseDeDonnées;
    }
}
