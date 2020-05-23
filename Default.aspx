<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WPLProject.Default" %>

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
            <div class="row my-5 ">
                <div class="col-12 col-md-4">
                    <h1>We are the Paper Product company</h1>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                </div>
                <div class="col-12 col-md-2"></div>
                <div class="col-12 col-md-6">
                    <img class="img-fluid w-100 rounded" src="images/banner.jpg" alt="Alternate Text" />
                </div>
            </div>
        </div>
        <div class="container-fluid light-primary-color">
            <div class="row justify-content-center align-items-center py-5">
                <div class="col-4">
                    <img class="img-fluid w-100 rounded" src="images/banner.jpg" alt="Alternate Text" />
                </div>
                <div class="col-4">
                    <img class="img-fluid w-100 rounded" src="images/banner2.jpg" alt="Alternate Text" />
                </div>
            </div>
        </div>
        <div class="primary-color w-100">
            <div class="container">
                <div class="row justify-content-center align-items-center py-5">
                    <div class="col-6">
                        <h3>About Us</h3>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
                    </div>
                    <div class="col-6">
                        <img class="img-fluid rounded" src="images/product-bags.jpg" alt="Alternate Text" />
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
