<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WPLProject.admin.AddProduct" %>

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
                        <a href="Admin.aspx"><i class="fas fa-2x fa-chevron-left"></i></a> Add New Product
                    </h1>
                    <p>Enter details for the new product</p>
                </div>
                <div class="col-md-6 col-12">
                    <div class="card text-center">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="nameInput">
                                    <h3>Product Name</h3>
                                </label>
                                <asp:TextBox ID="nameInput" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="typeSelect">
                                    <h3>Product Type</h3>
                                </label>
                                <select class="form-control" id="typeSelect" name="typeSelect">
                                    <option>Paper Carry Bags</option>
                                    <option>Parcel Bags</option>
                                    <option>Designer Gift Boxes</option>
                                    <option>Paper Tubes And Cones</option>
                                    <option>Paper Labels And Tags</option>
                                    <option>Cake Box</option>
                                    <option>Celebration Cracker Boxes</option>
                                    <option>Folding Gift Boxes</option>
                                    <option>Pillow Boxes</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="descInput">
                                    <h3>Product Description</h3>
                                </label>
                                <asp:TextBox ID="descInput" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="priceInput">
                                    <h3>Product Price</h3>
                                </label>
                                <asp:TextBox ID="priceInput" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                            </div>
                            <asp:Button ID="AddBtn" CssClass="btn" runat="server" Text="Add Product" OnClick="AddBtn_Click" />

                            <p>
                                <asp:Label ID="messageLbl" runat="server" Text=""></asp:Label>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="light-primary-color w-100">
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
