using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Modelo;
using DAL.Percistence;



namespace Sites.Pages
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarCliente(object sender, EventArgs e)
        {

            try
            {
                Pessoa p = new Pessoa()
                {
                    Nome        = txtNome.Text,
                    Endereco    = txtEndereco.Text,
                    Email       = txtEmail.Text
                };
                PessoaDAL d = new PessoaDAL();

                NewMethod(p, d); 

                lblMensagem.Text = "Cliente <strong>" + p.Nome + "</strong> cadastrado com sucesso!!";


                txtNome.Text        = string.Empty;
                txtEndereco.Text    = string.Empty;
                txtEmail.Text       = string.Empty;
            }
            catch (Exception ex)
            {
                lblMensagem.Text = ex.Message;
            }

        }

        private static void NewMethod(Pessoa p, PessoaDAL d)
        {
            d.Gravar(p); // gravar pessoa
        }
    }
}