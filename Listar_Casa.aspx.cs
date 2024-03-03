using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoFinal
{
    public partial class Listar_Casa : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Lista_dados()
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
            sql = "SELECT * FROM T_Casa, T_Cliente Where T_Casa.Id = T_Cliente.Id"; 
            command = new SqlCommand(sql, con);
            dataReader = command.ExecuteReader();

            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + " - " +
                   dataReader.GetValue(1) + " - " +
                   dataReader.GetValue(2) + " - " +
                   dataReader.GetValue(3) + " - " +
                   dataReader.GetValue(4) + " - " +
                   dataReader.GetValue(7) + "</br>";
                
            }
            Response.Write(Output);
            dataReader.Close();
            con.Close();





        }
    }
}