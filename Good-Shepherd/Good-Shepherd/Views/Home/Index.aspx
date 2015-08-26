<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    首頁
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
    $(document).ready(function () {

        $.ajax({
            url: '/Home/FirstAjax',
            type: 'POST',
            data: {
               EmpCode:"123456"
            },
            contentType: 'application/json; charset=utf-8',
            success: function (data) {
                alert(data.success);
            },
            error: function () {
                alert("error");
            }
        });


    });
</script>
   <p>工號:<input id="EmpCode"/></p> 
   <p>姓名:<input id="EmpName"/></p>
  
      <button Id="Submit">提交</button>
</asp:Content>
