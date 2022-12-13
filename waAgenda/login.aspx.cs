using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waAgenda
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btLogar_Click(object sender, EventArgs e)
        {
            String email = txtEmail.Text;
            String senha = txtSenha.Text;

            //capturar a string de conexao
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            //cria um objeto de conexao
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "select * from usuario where email = @email and senha =@senha";
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue("senha", senha); 
            con.Open();

            SqlDataReader registro = cmd.ExecuteReader();
            if (registro.HasRows)
            {
                HttpCookie login = new HttpCookie("login", txtEmail.Text);
                Response.Cookies.Add(login);
                Response.Cookies.Add(new HttpCookie("senha", txtSenha.Text));

                Response.Redirect("~/index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Email ou Senha incorretas') </script>");
               // lbMsg.Text = "Email ou Senha incorretas!";
            }
            
        }
    }
}