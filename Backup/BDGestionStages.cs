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
            
        }

        /// <summary>
        /// Pour sauvegarder toute modification faite
        /// à un stagiaire, un superviseur ou un stage.
        /// </summary>
        public void Sauvegarder()
        {
            
        }


        #region Stagiaire

        /// <summary>
        /// Pour ajouter un stagiaire dans la BD.
        /// </summary>
        /// <param name="p_Stagiaire">Objet à ajouter</param>
        public void Ajouter(Stagiaire p_Stagiaire)
        {
            Debug.Assert(p_Stagiaire != null, "p_Stagiaire doit être différent de null");
            
            
        }

        /// <summary>
        /// Retourne le Stagiaire dont l'identifiant est p_Id, ou
        /// null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_Id">Identifiant à rechercher</param>
        /// <returns>Un Stagiaire ou null</returns>
        public Stagiaire GetStagiaire(int p_Id)
        {
            
        }

        /// <summary>
        /// Retourne le stagiaire dont le nom d'utilisateur est 
        /// p_NomUtilisateur, ou null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_NomUtilisateur">Nom d'utilisateur</param>
        /// <returns>Un stagiaire ou null</returns>
        public Stagiaire GetStagiaire(string p_NomUtilisateur)
        {
            
        }

        /// <summary>
        /// Retourne la liste de tous les stagiaires. 
        /// </summary>
        public IQueryable<Stagiaire> GetAllStagiaires()
        {
            
        }


        #endregion


        #region Superviseur

        /// <summary>
        /// Pour ajouter un superviseur dans la BD.
        /// </summary>
        /// <param name="p_Superviseur">Objet à ajouter</param>
        public void Ajouter(Superviseur p_Superviseur)
        {
            
        }

        /// <summary>
        /// Retourne le Superviseur dont l'identifiant est p_Id, ou
        /// null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_Id">Identifiant à rechercher</param>
        /// <returns>Un Superviseur ou null</returns>
        public Superviseur GetSuperviseur(int p_Id)
        {
            
        }

        /// <summary>
        /// Retourne le superviseur dont le nom d'utilisateur est 
        /// p_NomUtilisateur, ou null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_NomUtilisateur">Nom d'utilisateur</param>
        /// <returns>Un superviseur ou null</returns>
        public Superviseur GetSuperviseur(string p_NomUtilisateur)
        {
            
        }

        /// <summary>
        /// Retourne la liste de tous les superviseurs. 
        /// </summary>
        public IQueryable<Superviseur> GetAllSuperviseurs()
        {
            
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

            
        }

        /// <summary>
        /// Retourne le Stage dont l'identifiant est p_Id, ou
        /// null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_Id">Identifiant à rechercher</param>
        /// <returns>Un Stage ou null</returns>
        public Stage GetStage(int p_Id)
        {
            
        }

        /// <summary>
        /// Retourne la liste de tous les stages. 
        /// </summary>
        public IQueryable<Stage> GetAllStages()
        {
            
        }

        #endregion

        #region Admin

        /// <summary>
        /// Retourne l'administrateur du site.
        /// </summary>
        /// <returns>L'admin</returns>
        public Administrateur GetAdministrateur()
        {
            
        }

        #endregion


        /// <summary>
        /// BD sous-jacente.
        /// </summary>
        private GestionStagesDataContext m_BaseDeDonnées;
    }
}
