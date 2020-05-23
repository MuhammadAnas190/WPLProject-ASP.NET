<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WPLProject.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Portal</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300;400;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../styles/all.min.css" />
    <link rel="stylesheet" href="../styles/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 light-primary-color primary-text-color d-flex justify-content-between">
                    <div class="logo">
                        <img class="img-fluid logo" src="../images/logo.jpg" alt="Logo" />
                    </div>
                    <div class="d-flex align-items-center justify-content-end">
                        <div>
                            <i class="fa fa-hand-peace"></i>
                            <asp:Label ID="welcomeLbl" runat="server" Text=""></asp:Label>
                        </div>
                        <button class="btn" id="logoutBtn" runat="server" onserverclick="logoutBtn_ServerClick">
                            <i class="fas fa-sign-out-alt"></i>Signout
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="container blob">
            <div class="row my-5 ">
                <div class="col-12 col-md-4">
                    <h1>Want to Add new Products?</h1>
                    <a class="btn" href="AddProduct.aspx">Add New Product</a>
                </div>
                <div class="col-12 col-md-2"></div>
                <div class="col-12 col-md-6">
                    <img class="img-fluid w-100 rounded" src="../images/banner.jpg" alt="Alternate Text" />
                </div>
            </div>
        </div>
        <div class="container-fluid light-primary-color">
            <div class="row justify-content-center align-items-center py-5">
                <div class="col-12 text-center my-4">
                    <h1>View All Products</h1>
                    <a class="btn" href="Products.aspx">Products</a>
                </div>
                <div class="col-4">
                    <img class="img-fluid w-100 rounded" src="../images/banner.jpg" alt="Alternate Text" />
                </div>
                <div class="col-4">
                    <img class="img-fluid w-100 rounded" src="../images/banner2.jpg" alt="Alternate Text" />
                </div>
            </div>
        </div>
        <div class="primary-color w-100">
            <div class="container">
                <div class="row justify-content-center align-items-center py-5">
                    <div class="col-6">
                        <h3>Orders Reports</h3>
                        <p>Check your orders and view reports of the total order</p>
                        <a class="btn" href="Orders.aspx">View Orders and Report</a>
                    </div>
                    <div class="col-6">
                        <img class="img-fluid rounded" src="../images/product-bags.jpg" alt="Alternate Text" />
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
                            <li><a class="list-group-item bg-transparent border-0" href="javascript:void(0)">+92 1234 456 67</a></li>
                            <li><a class="list-group-item bg-transparent border-0" href="javascript:void(0)">dummy@email.com</a></li>
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
