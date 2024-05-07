<%@ Page Title="Login" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineCabBookingSystem.MainMaster.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center>
    <br />
    <br />
	<div class="modal-dialog" role="document">
	<div class="modal-content">
	 <div class="modal-body">
				<form action="#" method="post">
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">User Name</label>
						<asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="User Name" name="Name"></asp:TextBox>
						
					</div>
					<div class="form-group">
						<label for="password" class="col-form-label">Password</label>
						<asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
						
					</div>
					<div class="row sub-w3l my-3">
					
						
					</div>
					<div class="right-w3l">
						<asp:Button ID="btnLogin" class="form-control" OnClick="btnLogin_Click" runat="server" Text="Login" />
					</div>
					<p class="text-center dont-do text-white mt-3">Don't have an account?
						<a href="Registration.aspx"   class="text-white">
							Register Now</a>
					</p>
				</form>
			</div>
	</div>
		</div>
    <br />
    <br />
</center>



</asp:Content>
