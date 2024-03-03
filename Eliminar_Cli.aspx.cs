using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal
{
    public partial class Eliminar_Cli : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Init(object sender, EventArgs e)
        {

            txt_id.Text = Request.QueryString["id"];
            string connetionString;
            SqlConnection con;
            // veja a imagem abaixo para saber onde vai buscar o caminho da conexão
            connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Izabel Forte\Desktop\IEFP\ASP.NET\ProjetoFinal\App_Data\ImobiliariaBD.mdf"";Integrated Security=True";
            con = new SqlConnection(connetionString);
            con.Open();

            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";

            sql = "Select * from T_Cliente where Id =" + Request.QueryString["id"];
            command = new SqlCommand(sql, con);
            dataReader = command.ExecuteReader();
            dataReader.Read();
            txt_nome.Text = dataReader.GetValue(1).ToString();
            txt_morada.Text = dataReader.GetValue(2).ToString();
            txt_telefone.Text = dataReader.GetValue(3).ToString();

            dataReader.Close();
            con.Close();
        }

        protected void bt_eliminar_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection con;
            // veja a imagem abaixo para saber onde vai buscar o caminho da conexão
            connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Izabel Forte\Desktop\IEFP\ASP.NET\ProjetoFinal\App_Data\ImobiliariaBD.mdf"";Integrated Security=True";
            con = new SqlConnection(connetionString);
            con.Open();
            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = " ";

            sql = "delete T_Cliente where Id = " + txt_id.Text;
            command = new SqlCommand(sql, con);
            adapter.InsertCommand = new SqlCommand(sql, con);
            adapter.InsertCommand.ExecuteNonQuery();
            command.Dispose();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Dados",
            "alert('Apagado com sucesso');window.location ='Gerir_Cliente.aspx'; ", true);
        }
    }
}