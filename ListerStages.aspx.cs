﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Stagiaire stagiaireActuel = Session["stagiaireActuel"] as Stagiaire;
            //Stagiaire stagiaireActuel = (Stagiaire)Session["stagiaireActuel"];


        }
    }
}