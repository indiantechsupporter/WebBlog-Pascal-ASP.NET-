<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Startseite.aspx.cs" Inherits="WebBlog_Pascal.Startseite" %>

      

    <!DOCTYPE html>
<html lang="en">
    <head runat="server">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Clean Blog - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <form id="form1" runat="server">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="index.html">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="index.html">Home</a></li>
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="about.html">About</a></li>
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="post.html">Sample Post</a></li>
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="contact.html">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Header-->
        <header class="masthead" style="background-image: url('assets/img/home-bg.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="site-heading">
                            <h1>Clean Blog</h1>
                            <span class="subheading">A Blog Theme by Start Bootstrap</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Main Content-->
        <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <!-- Post preview-->
                      <asp:datalist id="datalist" runat="server">
                <ItemTemplate>
                    <div class="post-preview">
                        <a href="post.aspx?id=<%# Eval("ID") %>">
                            <h2 class="post-title"><%# Eval("Titel") %></h2>
                             <h3 class="post-subtitle"><%# Eval("Tags") %></h3>
                        </a>
                        <p class="post-meta">
                            Posted by
                            <a href="#!"><%# Eval("Autor") %></a>
                            <%# Eval("Datum") %>
                        </p>
                    </div>
                </ItemTemplate>
        </asp:datalist>
</body>
         <table>
                <tr>
                    <td>Benutzername:</td>
                    <td>
                        <asp:TextBox ID="Tb_Name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Thema:</td>
                    <td>
                        <asp:DropDownList ID="Ddl_Thema" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Blogbeitrag:</td>
                    <td>

                        <asp:TextBox ID="Tb_Eintrag" runat="server" Columns="100" Rows="10" TextMode="MultiLine"></asp:TextBox>

                    </td>
                </tr>
              <tr>
                    <td>Titel:</td>
                    <td>

                        <asp:TextBox ID="Tb_Titel" runat="server" Columns="100" Rows="10" TextMode="MultiLine"></asp:TextBox>

                    </td>
                </tr>
             <tr>
                    <td>Tags:</td>
                    <td>

                        <asp:TextBox ID="Tb_Tags" runat="server" Columns="100" Rows="10" TextMode="MultiLine"></asp:TextBox>

                    </td>
                </tr>
            </table><br />
            <asp:Button ID="Btn_Absenden" runat="server" Text="Absenden" OnClick="Btn_Absenden_Click" />
        </form>
</html>
