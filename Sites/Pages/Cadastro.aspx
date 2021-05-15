<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Sites.Pages.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ARMSTRONGTEC|CADASTRO</title>
    <link type="text/css"rel="stylesheet" href="content/bootstrap.css"/>
</head>
      <script src="Scripts/jquery-1.9.1.min.js"></script>
       <script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="span10 ofiset1">
            <div class="row">
                <h1 class="well">Cadastro de clientes</h1>
                <br/>

                Nome do Cliente:
                <br/>
            <asp:TextBox ID="txtNome" runat="server" placeholder="fa-address-book [&#xf2b9;]"  Width="40%"  CssClass="form-control">
            </asp:TextBox>
            <asp:RequiredFieldValidator
                  ID="requiredNome"
                  runat="server"
                  ControlToValidate="txtNome"
                  ErrorMessage="Por favor Digite seu Nome."
                  ForeColor="Red"             
                   />
                <br/> <br/>
                Endereço:
                <br/>
                <asp:TextBox ID="txtEndereco" runat="server" placeholder="Forneça o Endereço"  Width="40%"  CssClass="form-control"  >
                </asp:TextBox>
                <asp:RequiredFieldValidator
                  ID="RequiredEndereco"
                  runat="server"
                  ControlToValidate="txtEndereco"
                  ErrorMessage="Por favor Digite seu Endereco."
                  ForeColor="Red"             
                   />
               
                <br/> <br/>
                Email:
                <br/>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Forneça o Email válido"  Width="40%"  CssClass="form-control"  >   </asp:TextBox>
                <asp:RequiredFieldValidator
                  ID="RequiredEmail"
                  runat="server"
                  ControlToValidate="txtEmail"
                  ErrorMessage="Por favor Digite seu Email."
                  ForeColor="Red"             
                   />
                
                <br/> <br/> 
               

                <p>
                  <asp:Label ID="lblMensagem"  runat="server" ></asp:Label>
                </p>
                
                <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar" CssClass="btn btn-success" Onclick="btnCadastrarCliente"  />
                 
                <a href="/Default.aspx" class="btn btn-default btn-group-lg">Voltar</a>
 
                </div>
           </div>
        </div>
    </form>
</body>
</html>
