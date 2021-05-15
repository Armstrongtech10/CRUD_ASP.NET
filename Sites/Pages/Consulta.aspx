<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Sites.Pages.Consulta" %>

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
                <h1 class="well">Consulta de clientes</h1>
                

              <asp:GridView ID="gridClientes" runat="server" CssClass="table table-hover table-striped" GridLines="None"  AutoGenerateColumns="false" BackColor="#ccccff" >
                  <Columns>
                    <asp:BoundField DataField="Codigo"   HeaderText="Código" />
                    <asp:BoundField DataField="Nome"     HeaderText="Nome" />
                    <asp:BoundField DataField="Endereco" HeaderText="Endereco" />
                    <asp:BoundField DataField="Email"    HeaderText="Email" />
                 </Columns>
                <RowStyle CssClass="cursor-pointer" />
                </asp:GridView>
               
                    <p>
                      <asp:Label ID="lblMensagem" runat="server"/>
                    </p>
               
                <a href="/Default.aspx " class="btn btn-default">Voltar</a>
                <a href="/Pages/Charts.aspx " class="btn btn-default">Estatistica</a>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
