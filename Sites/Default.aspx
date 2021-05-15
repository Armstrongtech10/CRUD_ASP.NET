<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sites.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ARMSTRONGTEC|HOME</title>
    <link type="text/css"rel="stylesheet" href="Pages/content/bootstrap.css"/>
</head>
      <script src="Pages/Scripts/jquery-1.9.1.min.js"></script>
       <script src="Pages/Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h1>Projeto ARMSTRONGTEC CRUD</h1>

              Selecione a operação desejada:
             <asp:DropDownList ID="dllMenu" runat="server">
                 <asp:ListItem Value="0">---escolha uma opção---</asp:ListItem>
                 <asp:ListItem Value="1">Cadastrar Clientes</asp:ListItem>
                 <asp:ListItem Value="2">Consultar Clientes</asp:ListItem>
                 <asp:ListItem Value="3">Obter os dados do Cliente</asp:ListItem>
            </asp:DropDownList>
            <asp:Button  ID="btnMenu" runat="server" CssClass="btn btn-primary" OnClick="BtnAcessar" Text="Acessar" Width="128px"/>
            
            
             <p>
              <asp:Label ID="lblMensagem" CssClass="alert-danger"  runat="server" ></asp:Label>
            </p>

        </div>
      </form>
    </body>
</html>