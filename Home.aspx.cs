using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoKid
{
    public partial class Home : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Code to execute when the page loads
            if (!IsPostBack)
            {
                // Initialization logic for the first page load
                InitializePage();
            }
        }

        private void InitializePage()
        {
            // Example: You can set default values or load data here
        }
    }
}