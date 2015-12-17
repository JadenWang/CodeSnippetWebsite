<%@ Page Title="Home Page" Language="C#" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/Site.master" ClientIDMode="AutoID" %>

<asp:Content ID="Content"  ContentPlaceHolderID="MainContent" runat="server">

    <asp:Button ID="btnSubmit" value="Submit" Text="Submit" runat="server" OnClick="btnSubmit_Click" />
    <asp:Button ID="Button1" value="Submit2" Text="Submit2" runat="server" OnClick="btnSubmit_Click" OnClientClick="console.log('test4');"/>
    name: <asp:TextBox ID="txtBox1" runat="server" Text="test3"></asp:TextBox>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script type="text/javascript">
    //(function () {
    //    $('#ctl00_MainContent_txtBox1').val('test2')
    //})();

    (function () {
        $('#ctl00_MainContent_txtBox1').attr('onclick', "console.log('test8')");
    })();
</script>
</asp:Content>






