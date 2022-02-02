<%@ Page Language="C#" CodeBehind="Default.aspx.cs" Inherits="Sitio.Default" %>
<!DOCTYPE html>
<html>
<head>
  <title>Title</title>
  <meta charset="utf-8" />
  <link href="~/Scripts/assets/img/favicon.png" rel="icon">
  <link href="~/Scripts/assets/img/favicon.png" rel="apple-touch-icon">               
  <link href="~/Scripts/assets/css/bootstrap.min.css" rel="stylesheet">
  <script src="~/Scripts/assets/js/jquery.min.js"></script>
  <script src="~/Scripts/assets/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link href="~/Scripts/assets/css/bootstrap-datepicker.css" rel="stylesheet">
  <link href="~/Scripts/assets/css/app.css" rel="stylesheet">        
</head>
<body>
<div class="main-container">  
<header>
  <nav class="navbar navbar-expand-lg bg-light fixed-top">
  <div class="container-fluid">
    <a id="home">Titulo</a>
  </div>
  </nav>
  <div class="top-header">
    <div class="header-background">
    </div>
  </div>
</header>
<main class="main-wrap">
<section id="content_site">
  <div class="container text-center">
    <div class="row justify-content-center">
      <div class="col-xl-6">
        <form id="login" runat="server">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">Bienvenido</h5>    
            </div>
            <div class="card-body">
               <div class="row">
                 <div class="col">
                   <h5 class="card-title">Ingreso al Sitio</h5>
                 </div>
                </div>
               <div class="row">
                 <div class="col">
                   <div class="input-group mb-3">
                     <span class="input-group-text" id="basic-addon1"><i class="fas fa-user-alt"></i></span>
                     <asp:TextBox ID="username" runat="server" CssClass="form-control"  placeholder="Nombre de Usuario o email" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                   </div>                   
                 </div>
                </div>
               <div class="row">
                 <div class="col">
                   <div class="input-group mb-3">
                     <span class="input-group-text" id="basic-addon1"><i class="fas fa-key"></i></span>
                     <asp:TextBox id="password" TextMode="Password"  runat="server"  CssClass="form-control" placeholder="Password" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                   </div>                   
                   
                 </div>
                </div>
                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Ingresar" OnClick="Ingresar" />
                </div>
        </div>
        </form>
      </div>
    </div>    
  </div>
</section>
</main>
</div>
<script src="~/Scripts/assets/js/jquery.bootstrap.wizard.js"></script>
<script src="~/Scripts/assets/js/form-wizard-init.js"></script>
<script src="~/Scripts/assets/js/bootstrap-datepicker.min.js"></script>
    
</body>
</html>
