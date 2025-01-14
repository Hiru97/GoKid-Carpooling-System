using System;
using System.Data.SqlClient;

namespace GoKid
{
    public partial class CustomerReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RegisterCustomer(object sender, EventArgs e)
        {
            string name = Request.Form["name"];
            string mobile = Request.Form["mobile"];
            string email = Request.Form["email"];
            string dob = Request.Form["dob"];
            string address = Request.Form["address"];
            string nic = Request.Form["nic"];
            string password = Request.Form["password"];

            string connectionString = "Server=DESKTOP-BQDEANC\\SQLEXPRESS;Database=GoKid;Trusted_Connection=True;";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "INSERT INTO Customers (Name, Mobile, Email, DOB, Address, NIC, Password) VALUES (@Name, @Mobile, @Email, @DOB, @Address, @NIC, @Password)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Mobile", mobile);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@DOB", dob);
                    cmd.Parameters.AddWithValue("@Address", address);
                    cmd.Parameters.AddWithValue("@NIC", nic);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.ExecuteNonQuery();
                }
            }
            Response.Redirect("Admin.aspx");
        }
    }
}
