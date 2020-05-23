<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WPLProject.Dashboard" %>

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
        <div class="container-fluid header">
            <div class="row light-primary-color primary-text-color justify-content-between">
                <div class="col-3">
                    <div class="logo">
                        <img class="img-fluid logo" src="images/logo.jpg" alt="Logo" />
                    </div>
                </div>
                <div class="col-9 d-flex justify-content-between align-items-center">
                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                    </button>
                    <div>
                        <i class="fas fa-hand-sparkles"></i>
                        <asp:Label ID="welcomeLbl" runat="server" Text=""></asp:Label>
                    </div>
                    <button class="btn" id="logoutBtn" runat="server" onserverclick="logoutBtn_ServerClick">
                        <i class="fas fa-sign-out-alt"></i>Signout
                    </button>
                </div>
            </div>
        </div>
        <div class="wrapper">
            <!-- Sidebar -->
            <nav id="sidebar" class="navbar navbar-expand-lg navbar-light">
                <div class="sidebar-header">
                    <h3>Menu</h3>
                </div>
                <ul class="list-unstyled components">
                    <li>
                        <a href="Dashboard.aspx" class="active"><i class="fas fa-house-user"></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="Search.aspx"><i class="fas fa-search"></i>Search</a>
                    </li>
                    <li>
                        <a href="Reports.aspx"><i class="fas fa-file-signature"></i>Orders</a>
                    </li>
                    <li>
                        <a href="MyOrders.aspx"><i class="fas fa-clipboard-list"></i>My Orders</a>
                    </li>
                </ul>
            </nav>

            <!-- Page Content -->
            <div id="content" class="bg-light">
                <!-- We'll fill this with dummy content -->
                <nav class="navbar navbar-expand-lg">
                    <div class="container-fluid">
                        <div class="content">
                            <div class="container">
                                <div class="row align-items-center my-5">
                                    <div class="col-6">
                                        <h1>Welcome to Dashboard</h1>
                                        <ul>
                                            <li>
                                                <p>Navigate to Search for a Product</p>
                                            </li>
                                            <li>
                                                <p>Navigate to Report to view Orders</p>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-6">
                                        <img class="img-fluid rounded" src="images/product-bags.jpg" alt="Alternate Text" />
                                    </div>
                                </div>
                                <div class="row my-5">
                                    <div class="col-md-4 col-6">
                                        <img class="img-fluid rounded" src="images/paper-products.jpg" alt="Alternate Text" />
                                    </div>
                                    <div class="col-md-4 col-6">
                                        <img class="img-fluid rounded" src="images/banner.jpg" alt="Alternate Text" />
                                    </div>
                                    <div class="col-md-4 col-6">
                                        <img class="img-fluid rounded" src="images/banner2.jpg" alt="Alternate Text" />
                                    </div>

                                </div>
                            </div>
                            <div class="container">
                                <div class="row w-100">
                                    <div class="col-12 text-center">
                                        <hr />
                                        <p>Copyright &copy; <%: DateTime.Now.Year %>. All Rights Reserved.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>

        </div>

    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="custom.js"></script>
</body>
</html>
