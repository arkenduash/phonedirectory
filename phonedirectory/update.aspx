<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="phonedirectory.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 345px;
    }
    .auto-style2 {
        width: 468px;
    }
    .auto-style3 {
        width: 488px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox8" runat="server" Width="329px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="search email" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">First Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Last name</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Phone Number</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Email ID</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Address</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Update Details" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:phonebookConnectionString %>" DeleteCommand="DELETE FROM [records] WHERE [citizenID] = @citizenID" InsertCommand="INSERT INTO [records] ([FirstName], [LastName], [phonenumber], [Email], [citizenaddress]) VALUES (@FirstName, @LastName, @phonenumber, @Email, @citizenaddress)" SelectCommand="SELECT * FROM [records] where citizenID=2" UpdateCommand="UPDATE [records] SET [FirstName] = @FirstName, [LastName] = @LastName, [phonenumber] = @phonenumber, [Email] = @Email, [citizenaddress] = @citizenaddress WHERE [citizenID] = @citizenID">
    <DeleteParameters>
        <asp:Parameter Name="citizenID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FirstName" Type="String" />
        <asp:Parameter Name="LastName" Type="String" />
        <asp:Parameter Name="phonenumber" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="citizenaddress" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:ControlParameter ControlID="TextBox9" Name="FirstName" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="TextBox10" Name="LastName" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="TextBox11" Name="phonenumber" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="TextBox12" Name="Email" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="TextBox13" Name="citizenaddress" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="TextBox8" Name="citizenID" PropertyName="Text" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
