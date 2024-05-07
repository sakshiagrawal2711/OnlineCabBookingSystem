<%@ Page Title="BookingPage" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="BookingPage.aspx.cs" Inherits="OnlineCabBookingSystem.MainMaster.BookingPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center>
    <br />
    <br />
        <div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel1">Book your Cab now</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="#" method="post">
					<div class="form-group">
						<label for="recipient-name" class="col-form-label">Current Location</label>
						<asp:DropDownList ID="txtLocation" class="form-control" placeholder="Current Location" runat="server">
						 <asp:ListItem>Rajankunte</asp:ListItem>
						<asp:ListItem>Nagenhalli</asp:ListItem>
						 <asp:ListItem>Yelahanka</asp:ListItem>
						</asp:DropDownList>
					</div>
					<div class="form-group">
						<label for="recipient-email" class="col-form-label">Enter Destination</label>
						<asp:TextBox ID="txDest" class="form-control" placeholder="Enter Destination" runat="server"></asp:TextBox>
						
					</div>
					<div class="form-group">
						<label for="password1" class="col-form-label">Choose Vehicle</label>
						<asp:DropDownList ID="txtVehicle" class="form-control" placeholder="Enter Vehicle" runat="server">
                            <asp:ListItem>Auto</asp:ListItem>
                            <asp:ListItem>Mini</asp:ListItem>
                            <asp:ListItem>Sedan</asp:ListItem>
                            <asp:ListItem>FastRide XL</asp:ListItem>
                            <asp:ListItem>BIke</asp:ListItem>
                        </asp:DropDownList>
						
					</div>
					<div class="form-group">
						<label for="password2" class="col-form-label">Choose Class</label>
						<asp:DropDownList ID="txtClass" class="form-control" placeholder="Choose Class" runat="server">
                            <asp:ListItem>Economy</asp:ListItem>
                            <asp:ListItem>Premium</asp:ListItem>
                        </asp:DropDownList>
						
					</div>
					<div class="right-w3l">
						<asp:Button ID="btnRegister"   OnClick="btnBookNow_Click" class="form-control" runat="server" Text="Book Now" /><br />
						<asp:Button ID="btnCheck"   OnClick="btnCheck_Click" class="form-control" runat="server" Text="Driver Details" />
			
					</div>

				</form>
			</div>
		</div>
	</div>
    <br />
    <br />
</center>
	<div class="container">
<div class="modal fade" id="mymodal" data-backdrop="false" role="dialog">
<div class=" modal-dialog modal-dailog-centered">
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title">Driver Details</h4>
<asp:Label ID="lblmsg" Text="" runat="server" />
<button type="button" class="close" data-dismiss="modal">&times;</button>
</div>
<div class="modal-body">
<label>Driver Name: </label>
<asp:TextBox ID="txtDn" CssClass="form-control"  runat="server" Enabled="false" />
<label>Vehicle no: </label>
<asp:TextBox ID="txtVn" CssClass="form-control"  runat="server" Enabled="false"/>
<label>OTP: </label>
 <asp:TextBox ID="txtOTP" CssClass="form-control" runat="server" Enabled="false"/>
</div>
</div>
</div>
</div>




</asp:Content>
