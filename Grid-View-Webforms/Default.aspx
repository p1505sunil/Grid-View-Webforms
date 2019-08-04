<%@ Page Language="C#" AutoEventWireup="true" 

CodeFile="Default.aspx.cs" Inherits="_Default" %>
 
<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
 
    <!-- Datatables-->
    <link href="bootstrap/vendors/datatables.net-bs4/css/dataTables.bootstrap4.min.css" 

     rel="stylesheet" />
 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron text-center">  
                <h1>My first ASP.NET Gridview using Bootstrap 4</h1>
                <asp:Button ID="btnConfirm" 

                                            runat="server" Text="Go To Second Gridview" 

                                            PostBackUrl="~/Default2.aspx" />
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"

                OnPreRender="GridView_PreRender"

                CssClass="table table-striped">
            </asp:GridView>
 
        </div>
    </form>
 
    <!-- jQuery and Bootstrap JS files -->
    <script src="bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
 
    <!-- Datatables-->
    <script src="bootstrap/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="bootstrap/vendors/datatables.net-bs4/js/dataTables.bootstrap4.min.js">
    </script>
 
    <!-- pace -->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= GridView1.ClientID %>').dataTable({
                "aLengthMenu": [[10, 50, 75, -1], [10, 50, 75, "All"]],
                "iDisplayLength": 10,
                "order": [[2, "asc"]],
                stateSave: true,
                stateSaveCallback: function (settings, data) {
                    localStorage.setItem
                      ('DataTables_' + settings.sInstance, JSON.stringify(data));
                },
                stateLoadCallback: function (settings) {
                    return JSON.parse
                     (localStorage.getItem('DataTables_' + settings.sInstance));
                }
            });
        });
    </script>
 
</body>
 
</html>