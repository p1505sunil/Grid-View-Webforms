<%@ Page Language="C#" AutoEventWireup="true" 

CodeFile="Default2.aspx.cs" Inherits="Default2" %>
 
<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
 
    <!-- Datatables-->
    <link href="bootstrap/vendors/datatables.net-bs4/css/dataTables.bootstrap4.min.css" 

     rel="stylesheet" />
    <link href="bootstrap/vendors/datatables.net-buttons-bs4/css/buttons.bootstrap4.css" 

     rel="stylesheet" />
 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="h-25"></div>
            <div class="jumbotron text-center">
                <h1>My second ASP.NET Gridview using Bootstrap 4</h1>
                <asp:Button ID="btnConfirm" runat="server" 

                 Text="Go To First Gridview" PostBackUrl="~/Default.aspx" />
            </div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="true"

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
    <script src="bootstrap/vendors/datatables.net-buttons/js/dataTables.buttons.min.js">
    </script>
    <script src="bootstrap/vendors/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js">
    </script>
    <script src="bootstrap/vendors/jszip/dist/jszip.min.js"></script>
    <script src="bootstrap/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="bootstrap/vendors/pdfmake/build/vfs_fonts.js"></script>
    <script src="bootstrap/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="bootstrap/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="bootstrap/vendors/datatables.net-buttons/js/buttons.colVis.min.js"></script>
    <script src="bootstrap/assets/js/init-scripts/data-table/datatables-init.js"></script> 
 
    <!-- pace -->
    <script>
        var handleDataTableButtons = function () {
            "use strict";
            0 !== $('#<%= GridView2.ClientID %>').length && 
                  $('#<%= GridView2.ClientID %>').DataTable({
            dom: "Bfrtip",
            buttons: [{
                extend: "copy",
                className: "btn-sm"
            }, {
                extend: "csv",
                className: "btn-sm"
            }, {
                extend: "excel",
                className: "btn-sm"
            }, {
                extend: "pdf",
                className: "btn-sm"
            }, {
                extend: "print",
                className: "btn-sm"
            }],
            responsive: !0
        })
    },
    TableManageButtons = function () {
        "use strict";
        return {
            init: function () {
                handleDataTableButtons()
            }
        }
    }();
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= GridView2.ClientID %>').dataTable();
        });
        TableManageButtons.init();
    </script>
 
</body>
 
</html>