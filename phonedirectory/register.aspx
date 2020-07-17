<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="phonedirectory.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 296px;
    }
    .auto-style2 {
        width: 426px;
    }
    .auto-style3 {
        width: 749px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    &nbsp;</p>
<table style="width:100%;">
    <tr>
        <td class="auto-style1">First Name</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Last Name</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Phone Number</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Email ID</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Address</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="Button2" runat="server" BackColor="#6600FF" BorderColor="Black" BorderStyle="Solid" OnClick="Button2_Click" Text="ADD Details" Width="115px" />
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
</table>
<asp:Label ID="Label2" runat="server"></asp:Label>
<p>
</p>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:phonebookConnectionString %>" DeleteCommand="DELETE FROM [records] WHERE [citizenID] = @citizenID" InsertCommand="INSERT INTO [records] ([FirstName], [LastName], [phonenumber], [Email], [citizenaddress]) VALUES (@FirstName, @LastName, @phonenumber, @Email, @citizenaddress)" SelectCommand="SELECT * FROM [records]" UpdateCommand="UPDATE [records] SET [FirstName] = @FirstName, [LastName] = @LastName, [phonenumber] = @phonenumber, [Email] = @Email, [citizenaddress] = @citizenaddress WHERE [citizenID] = @citizenID">
    <DeleteParameters>
        <asp:Parameter Name="citizenID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="TextBox2" Name="FirstName" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="TextBox3" Name="LastName" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="TextBox4" Name="phonenumber" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="TextBox5" Name="Email" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="TextBox6" Name="citizenaddress" PropertyName="Text" Type="String" />
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
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
