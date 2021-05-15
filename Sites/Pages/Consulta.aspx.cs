using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Percistence;
using DAL.Modelo;

namespace Sites.Pages
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                PessoaDAL d = new PessoaDAL();

                gridClientes.DataSource = d.Listar();// POPULAR A TABELA 
                gridClientes.DataBind();             // EXIBIR A TABELA

            }
            catch (Exception ex)
            {
                lblMensagem.Text = ex.Message;
            }

        }
    }
}