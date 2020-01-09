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

        protected void btnQuitter_Click(object sender, EventArgs e)
        {
            Response.Redirect("Utilisateur.aspx");
        }

        private void AjouterUnStage()
        {
            
//            if (Session[""])
//            {
//                
//            }
        }
    }
}