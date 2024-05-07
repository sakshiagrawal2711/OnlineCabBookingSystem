<%@ Page Title="Registration" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineCabBookingSystem.MainMaster.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center>
    <br />
    <br />
        <div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel1">Register your account</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="#" method="post">
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">User Name</label>
						<asp:TextBox ID="txtUserName" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
						
					</div>
					<div class="form-group">
						<label for="recipient-email" class="col-form-label">Email</label>
						<asp:TextBox ID="txtEmail" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
						
					</div>
					<div class="form-group">
						<label for="password1" class="col-form-label">Password</label>
						<asp:TextBox ID="txtPassword" class="form-control" placeholder=" Password" runat="server"></asp:TextBox>
						
					</div>
					<div class="form-group">
						<label for="password2" class="col-form-label">Confirm Password</label>
						<asp:TextBox ID="txtCPassword" class="form-control" placeholder="Confirm Password" runat="server"></asp:TextBox>
						
					</div>
					<div class="sub-w3l">
					</div>
					<div class="right-w3l">
						<asp:Button ID="btnRegister"  OnClick="btnRegister_Click"  class="form-control" runat="server" Text="Submit" />
			
					</div>
				</form>
			</div>
		</div>
	</div>
    <br />
    <br />
</center>




</asp:Content>
