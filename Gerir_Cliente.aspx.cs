using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal
{
    public partial class Gerir_Cliente : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Obter_dados()
        {
            string connetionString;
            SqlConnection con;
            // veja a imagem abaixo para saber onde vai buscar o caminho da conexão
            connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Izabel Forte\Desktop\IEFP\ASP.NET\ProjetoFinal\App_Data\ImobiliariaBD.mdf"";Integrated Security=True";
            con = new SqlConnection(connetionString);
            con.Open();



            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "SELECT * FROM T_Cliente";
            Output = Output + "<table border='1'> <tr><th>ID</th><th>Nome</th><th>Morada</th>";
            Output = Output + "<th>Telefone</th></tr>";
           
            command = new SqlCommand(sql, con);
            dataReader = command.ExecuteReader();

            while (dataReader.Read())
            {
                Output = Output + "<tr><td>" + dataReader.GetValue(0) + "</td>" +
                  "<td>" + dataReader.GetValue(1) + "</td>" +
                  "<td>" + dataReader.GetValue(2) + "</td>" +
                  "<td>" + dataReader.GetValue(3) +
                   "<td><input type='button' Value='Editar'" +
                "onclick = window.open('Editar_Cli.aspx?id=" + dataReader.GetValue(0) + "') />" +
                "&nbsp<input type = 'button' Value = 'Eliminar'" +
                "onclick = window.open('Eliminar_Cli.aspx?id=" + dataReader.GetValue(0) + "') />" +
                "</td></tr>";
            }
            Response.Write(Output + "</table>");
            dataReader.Close();
            con.Close();





        }

        protected void bt_adicionar_Click(object sender, EventArgs e)
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
            sql = "Insert into T_Cliente (nome, morada, telefone) values ('" + txt_nome.Text + "','" + txt_morada.Text + "','" + txt_telefone.Text + "')";
            command = new SqlCommand(sql, con);
            adapter.InsertCommand = new SqlCommand(sql, con);
            adapter.InsertCommand.ExecuteNonQuery();
            command.Dispose();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Dados",
            "alert('Cliente inserido com sucesso');window.location ='Gerir_Cliente.aspx'; ", true);
        }
    }
}