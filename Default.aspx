<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>

    username:&nbsp<asp:TextBox ID="txtInputName" runat="server"></asp:TextBox><br />
    password:&nbsp <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
    <p />

    <p>
        <asp:Button ID="btnSubmit" Text="Submit" OnClientClick='ValidateUserName(); return false;' runat="server" />
    </p>
    <p>
        <asp:TextBox ID="lblJsTest"  Text="label test" onclick="ValidateUserName()" runat="server"></asp:TextBox>
    </p>


    <!--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" ></script>-->
    <%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" ></script>--%>
    <script type="text/javascript" src="/Scripts/jquery.min.js"></script>

    <script src="https://gist.github.com/JadenWang/25864bf1485482597281.js"></script>

    <script type="text/javascript">
        function ValidateUserName()
        {
            //javascript:window.open("http://www.google.com");
            //var newWin = window.open("http://www.google.com", null, null, true);
            //window.location.replace("http://www.google.com");
            //window.location.href = "https://www.google.com";
            //window.open("https://www.google.com", "_blank");
            $(location).attr('href', 'https://www.google.com');
            //window.alert("this is a alert!");
        }
    </script>

</asp:Content>
