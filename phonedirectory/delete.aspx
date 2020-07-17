<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="phonedirectory.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 345px;
    }
    .auto-style2 {
        width: 468px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox8" runat="server" Width="329px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="search email" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">First Name</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Last name</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Phone Number</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Email ID</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Address</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:phonebookConnectionString %>" DeleteCommand="DELETE FROM [records] WHERE [citizenID] = @citizenID" InsertCommand="INSERT INTO [records] ([FirstName], [LastName], [phonenumber], [Email], [citizenaddress]) VALUES (@FirstName, @LastName, @phonenumber, @Email, @citizenaddress)" SelectCommand="SELECT * FROM [records]" UpdateCommand="UPDATE [records] SET [FirstName] = @FirstName, [LastName] = @LastName, [phonenumber] = @phonenumber, [Email] = @Email, [citizenaddress] = @citizenaddress WHERE [citizenID] = @citizenID">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="TextBox8" Name="citizenID" PropertyName="Text" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="phonenumber" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="citizenaddress" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="phonenumber" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="citizenaddress" Type="String" />
                    <asp:Parameter Name="citizenID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td class="auto-style2">
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Delete contact" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
</table>
</asp:Content>
