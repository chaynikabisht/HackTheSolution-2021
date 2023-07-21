using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MedZeeSolution.DbOperations;
namespace MedZeeSolution
{
    public partial class Index : System.Web.UI.Page
    {
        MedZeeRepo _repo = new MedZeeRepo();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            var fullName = txtName.Text;
            var email = txtEmail.Text;
            var password = txtPassword.Text;
            try
            {
                if (!string.IsNullOrEmpty(fullName) && !string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(password))
                {
                    _repo.RegisterUser(fullName, password, email);
                }
            }
            catch (Exception ex)
            {
                throw;
            }            
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            var email = txtLoginEmail.Text;
            var password = txtLoginPassword.Text;
            try
            {
                if (!string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(password))
                {                 
                string returnPassword=_repo.GetUser(email);
                if (!string.IsNullOrEmpty(returnPassword))
                {
                    if (password == returnPassword)
                    {
                        Response.Redirect("http://localhost:57307/Website/index.html");
                    }
                }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}