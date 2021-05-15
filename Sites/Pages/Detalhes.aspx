<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="Sites.Pages.Detalhes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ARMSTRONGTEC|CADASTRO</title>
    <link type="text/css"rel="stylesheet" href="content/bootstrap.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>
      <script src="Scripts/jquery-1.9.1.min.js"></script>
       <script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="span10 ofiset1">
            <div class="row">
                <h1 class="well">Consulta de clientes</h1>

            Informe o Código:
            <asp:TextBox ID="textCodigo" CssClass="form-control" runat="server" Width="51px"></asp:TextBox>
            <br /><br />
       
            <asp:Button ID="btnPesquisa" CssClass="btn btn-info" runat ="server" Text="Pesquisar" OnClick="btnPesquisarCliente" Width ="125px" />
            <a href="/Default.aspx"  class="btn btn-default" ">Voltar</a>
            <a href="/Pages/Detalhes.aspx"  class="btn btn-default"><i class="fa fa-refresh"></i></a>
                


            <br /><br />
        
             <asp:Panel ID="pnlDados" runat="server" >
             Nome do Cliente:
            <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
            <br /><br />
       
             Endereço do Cliente:
            <asp:TextBox ID="txtEndereco" CssClass="form-control" runat="server" Width="350px"></asp:TextBox>
            <br /><br />
            
             Email do Clente:
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"  Width="350px"></asp:TextBox>
            <br /><br />

             
             <asp:Button ID="bntExcluir" runat="server" Text="Excluir" CssClass="btn btn-danger" OnClick="BntExcluirClientes" Width="125px" />
             <asp:Button ID="bntAtualizar" runat="server" Text="Atualizar" CssClass="btn btn-warning" OnClick="bntAtualizarClientes" Width="125px" />
             
                 <br /> <br />
             </asp:Panel>
              <p>
             <asp:Label ID="lblMensagem" runat="server"/>
             </p>
            </div>
                </div>
            </div>
        </form>
    </body>
</html>
