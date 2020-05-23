<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewRep.aspx.cs" Inherits="WPLProject.admin.ViewRep" %>

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
            <div class="row my-5 justify-content-center">
                <div class="col-12 text-center">
                    <h1>
                        <a href="Admin.aspx"><i class="fas fa-2x fa-chevron-left"></i></a>
                        All Orders Report
                    </h1>
                    <p>Edit Details or Delete your Orders here</p>
                </div>
            </div>
            <div class="row my-5 justify-content-start">
                <div class="col-6 col-md-4">
                    <asp:Label ID="Label1" runat="server" Text="Order Id"></asp:Label>
                    <asp:Label ID="oIdInp" CssClass="form-control" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-6 col-md-4">
                    <asp:Label ID="Label2" runat="server" Text="Product Id"></asp:Label>
                    <asp:Label ID="pIdInp" CssClass="form-control" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-6 col-md-4">
                    <asp:Label ID="Label4" runat="server" Text="User Id"></asp:Label>
                    <asp:Label ID="uIdInp" CssClass="form-control" runat="server" Text=""></asp:Label>
                </div>
                <hr />
                <div class="col-12 my-2">
                    <h3>Order Details</h3>
                </div>
                <div class="col-6 col-md-3">
                    <asp:Label ID="Label6" runat="server" Text="Paid Amount"></asp:Label>
                    <asp:Label ID="amountInp" CssClass="form-control" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-6 col-md-3">
                    <asp:Label ID="Label8" runat="server" Text="Quantity"></asp:Label>
                    <asp:Label ID="quanInp" CssClass="form-control" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-12 my-2">
                    <h3>Product Details</h3>
                </div>
                <div class="col-6 col-md-3">
                    <asp:Label ID="Label10" runat="server" Text="Product Name"></asp:Label>
                    <asp:Label ID="pNameInp" CssClass="form-control" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-6 col-md-3">
                    <asp:Label ID="Label12" runat="server" Text="Product Type"></asp:Label>
                    <asp:Label ID="pTypeInp" CssClass="form-control" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-6 col-md-3">
                    <asp:Label ID="Label14" runat="server" Text="Product Description"></asp:Label>
                    <asp:Label ID="pDescInp" CssClass="form-control" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-6 col-md-3">
                    <asp:Label ID="Label16" runat="server" Text="Product Price"></asp:Label>
                    <asp:Label ID="priceInp" CssClass="form-control" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-12 my-2">
                    <h3>User Details</h3>
                </div>
                <div class="col-6 col-md-3">
                    <asp:Label ID="Label18" runat="server" Text="User Name"></asp:Label>
                    <asp:Label ID="unameInp" CssClass="form-control" runat="server" Text=""></asp:Label>
                </div>
                <div class="col-6 col-md-3">
                    <asp:Label ID="Label20" runat="server" Text="User Email"></asp:Label>
                    <asp:Label ID="uemailInp" CssClass="form-control" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
        <div class="light-primary-color w-100">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <hr />
                        <p>
                            Copyright &copy;      
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