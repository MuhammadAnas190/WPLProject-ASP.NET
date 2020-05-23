<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WPLProject.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="styles/all.min.css" />
    <link rel="stylesheet" href="styles/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg d-flex justify-content-between">
                        <a class="navbar-brand" href="Default.aspx">
                            <img class="img-fluid logo" src="images/logo.jpg" alt="Logo" /></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav justify-content-end w-100">
                                <li class="nav-item">
                                    <a class="nav-link btn" href="Login.aspx"><i class="fa fa-user"></i> Login</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link btn" href="Signup.aspx"><i class="fa fa-user-plus"></i> Signup</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <div class="container blob">
            <div class="row my-5 justify-content-center">
                <div class="col-12 text-center">
                    <h1>Signup</h1>
                    <p>Become a part of our Service</p>
                </div>
                <div class="col-md-6 col-12">
                    <div class="card text-center">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="usernameInput">
                                    <h3>Username</h3>
                                </label>
                                <asp:TextBox ID="usernameInput" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="EmailInput">
                                    <h3>Email address</h3>
                                </label>
                                <asp:TextBox ID="EmailInput" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="PassInput">
                                    <h3>Password</h3>
                                </label>
                                <asp:TextBox ID="PassInput" CssClass="form-control" runat="server" TextMode="Password" OnTextChanged="PassInput_TextChanged"></asp:TextBox>
                            </div>
                            <asp:Button ID="SignupBtn" CssClass="btn" runat="server" Text="Signup" OnClick="SignupBtn_Click1" />
                            <p class="my-3"><asp:Label ID="messageLbl" runat="server" Text=""></asp:Label></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="light-primary-color w-100">
            <div class="container">
                <div class="row text-center justify-content-center align-items-center py-5">
                    <div class="col-12">
                        <h3>Contact  Us</h3>
                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                        <ul class="list-unstyled d-flex justify-content-center list-group list-group-horizontal">
                            <li><a class="list-group-item bg-transparent border-0" href="tel:+92123445667"><i class="fa fa-phone-alt"></i> +92 1234 456 67</a></li>
                            <li><a class="list-group-item bg-transparent border-0" href="mailto:dummy@email.com"><i class="fa fa-envelope"></i> dummy@email.com</a></li>
                        </ul>
                    </div>
                </div>
            </div>
             <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <hr />
                        <p>Copyright &copy; <%: DateTime.Now.Year %>. All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>