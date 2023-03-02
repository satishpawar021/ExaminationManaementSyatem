<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="OnlineExamination.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="Scripts/jquery-3.4.1.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            debugger;

        });


        $("#btnsave").click(function () {
            var id = $('#txtname').val();
            $.ajax({
                url: '/WebForm1.aspx/getdataDetails',
                method: 'post',
                contentType: 'application/json;charset=utf-8',
                dataType: 'json',
                data: '{id:' + id + '}',
                success: function (data) {
                    debugger;
                }
            });
        });
        function save() {
            alert('test');
            var id = $('#txtname').val();
            $.ajax({
                url: '/WebForm1.aspx/getdataDetails',
                method: 'post',
                contentType: 'application/json;charset=utf-8',
                dataType: 'json',
                data: '{id:' + id + '}',
                success: function (data) {
                    debugger;
                }
            });
        }


        function ShowCurrentTime() {
            $.ajax({
                type: "POST",
                url: "WebForm1.aspx/GetCurrentTime",
                data: '{name: "' + $("#<%=txtUserName.ClientID%>")[0].value + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function OnSuccess(response) {
            alert(response.d);
        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Your Name :  
    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <input id="btnGetTime" type="button" value="Show Current Time" onclick="ShowCurrentTime()" />
        </div>
    </form>
</body>
</html>
