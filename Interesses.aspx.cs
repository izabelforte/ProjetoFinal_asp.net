using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal
{
    public partial class Interesses : Page
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
            sql = "SELECT * FROM T_Interesse";
            Output = Output + "<table border='1'> <tr><th>ID</th><th>Zona</th><th>Tipologia</th>";
            Output = Output + "<th>Cliente</th></tr>";

            command = new SqlCommand(sql, con);
            dataReader = command.ExecuteReader();

            while (dataReader.Read())
            {
                Output = Output + "<tr><td>" + dataReader.GetValue(0) + "</td>" +
                  "<td>" + dataReader.GetValue(1) + "</td>" +
                  "<td>" + dataReader.GetValue(2) + "</td>" +
                  "<td>" + dataReader.GetValue(3) + "</td>" +
                "<td><input type='button' Value='Eliminar'" +
                "onclick = window.open('Eliminar_Int.aspx?id=" + dataReader.GetValue(0) + "') />" +
                "</td></tr>";
            }
            Response.Write(Output + "</table>");
            dataReader.Close();
            con.Close();





        }
        protected void Page_Init(object sender, EventArgs e)
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
            sql = "Select * from T_Cliente";
            string x;
            command = new SqlCommand(sql, con);
            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                x = dataReader.GetValue(0) + "";
                DD_proprietario.Items.Add(new ListItem((string)dataReader.GetValue(1), x));
            }
            dataReader.Close();
            Response.Write(Output);
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

            sql = "Insert into T_Interesse (zona, n_assoalhadas, id_cliente) values ('" + txt_zona.Text + "', '"+ txt_assoalhadas.Text + "','" + DD_proprietario.SelectedValue + "')";
            command = new SqlCommand(sql, con);
            adapter.InsertCommand = new SqlCommand(sql, con);
            adapter.InsertCommand.ExecuteNonQuery();
            command.Dispose();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Dados",
            "alert('Dados inseridos com sucesso');window.location ='Interesses.aspx'; ", true);
        }
    }
}