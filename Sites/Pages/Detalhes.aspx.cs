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
    public partial class Detalhes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlDados.Visible = false;
        }

        // Ação do botão pesquisar:
        protected void btnPesquisarCliente(object sender, EventArgs e)
        {
            try
             {
                int Codigo = Convert.ToInt32(textCodigo.Text);

                PessoaDAL d = new PessoaDAL();
                Pessoa p = d.PesquisarPorCodigo(Codigo);

                if(p != null)
                {
                    pnlDados.Visible = true;
                    txtNome.Text = p.Nome;
                    txtEndereco.Text = p.Endereco;
                    txtEmail.Text = p.Email;
                }
                else
                   {
                    lblMensagem.Text = "Cliente não encontrado! , Atualize a pagina para nova pesquisa";

                    textCodigo.Text = String.Empty;
                   }

                }
                catch (Exception ex)
                {

                lblMensagem.Text = ex.Message;
            }
            
        }

        protected void BntExcluirClientes(object sender, EventArgs e)
        {


            try
            {

                int Codigo = Convert.ToInt32(textCodigo.Text);

                Pessoa p = new Pessoa();
                PessoaDAL d = new PessoaDAL();

                d.Excluir(Codigo);

                lblMensagem.Text = "Cliente excluido com sucesso, Atualize a pagina para nova pesquisa";


                textCodigo.Text = string.Empty;
                txtNome.Text = string.Empty;
                txtEndereco.Text = string.Empty;
                txtEmail.Text = string.Empty;

            }
            catch (Exception ex)
            {

                lblMensagem.Text = ex.Message;
            }

        }

        protected void bntAtualizarClientes(object sender, EventArgs e)
        {

            try
            {

                Pessoa p = new Pessoa()
                {
                    Codigo = Convert.ToInt32(textCodigo.Text),
                    Nome = Convert.ToString(txtNome.Text),
                    Endereco = Convert.ToString(txtEndereco.Text),
                    Email = Convert.ToString(txtEmail.Text)
                };

                PessoaDAL d = new PessoaDAL();
                d.Atualizar(p);

                lblMensagem.Text = "Cliente Atualizado com sucesso, Atualize a pagina para nova pesquisa";

                textCodigo.Text = string.Empty;
                txtNome.Text = string.Empty;
                txtEndereco.Text = string.Empty;
                txtEmail.Text = string.Empty;


            }
            catch (Exception ex)
            {

                lblMensagem.Text = ex.Message;
            }


        }
    }
}