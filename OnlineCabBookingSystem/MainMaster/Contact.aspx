<%@ Page Title="Contact" Language="C#" MasterPageFile="~/MainMaster/MainMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineCabBookingSystem.MainMaster.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center>
    <br />
    <br />
        <section class="contact py-5">
	<div class="container py-lg-5">
		<h1 class="heading text-capitalize text-center">Fast Ride</h1>
		<h5 class="heading mb-5 text-center">Taxi Cab</h5>
		<div class="row agile-contact-form">
			<div class="col-md-6 contact-form-left map">
				<div class="w3layouts-contact-form-top">
				<div class="contact-form-top">
					<h3>Locate Us</h3>
				</div>
					<iframe src="https://www.google.com/maps/embed/v1/place?q=Presidency+University+Bangalore&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8" allowfullscreen></iframe>
				</div>
				
			</div>
			<div class="col-md-6 mt-md-0 mt-4 contact-form-right">
				<div class="contact-form-top">
					<h3>Send us a message</h3>
				</div>
				<div class="agileinfo-contact-form-grid">
                    <form action="#" method="post">
                        <asp:TextBox id="txtName" runat="server" placeholder="Name"></asp:TextBox>

                        <asp:TextBox id="txtSubject" runat="server" placeholder="Subject"></asp:TextBox>

                        <asp:TextBox id="txtEmail" runat="server" placeholder="Email"></asp:TextBox>

                        <asp:TextBox id="txtMessage" placeholder="Message" runat="server"></asp:TextBox>

                        <asp:Button id="btnSend" class="btn1" runat="server" Text="SEND" OnClick="btnSend_Click"></asp:Button>
                       
                    </form>
				</div>
			</div>
		</div>
				<div class="row top mt-5">
					<div class="col-lg-4 mb-lg-0 mb-4 address-grid">
						<div class="row address-info">
							<div class="col-lg-3 col-sm-2 mb-sm-0 mb-3 address-left">
								<i class="fas fa-map-marker-alt"></i>
							</div>
							<div class="col-lg-9 col-sm-10 address-right text-left">
								<h6>Address</h6>
								<p> <span>Presidency Uniersity, Bangalore, India</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 mb-lg-0 mb-4 address-grid">
						<div class="row address-info">
							<div class="col-lg-3 col-sm-2 mb-sm-0 mb-3 address-left">
								<i class="fas fa-envelope-open"></i>
							</div>
							<div class="col-lg-9 col-sm-10 address-right text-left">
								<h6>Email</h6>
								<p>Email :
									<a href="#"> fastrides@gmail.com</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 address-grid">
						<div class="row address-info">
							<div class="col-lg-3 col-sm-2 mb-sm-0 mb-3 address-left">
								<i class="fas fa-phone"></i>
							</div>
							<div class="col-lg-9 col-sm-10 address-right text-left">
								<h6>Phone</h6>
								<p>Phone : 90861 23456</p>
								<p>Fax : 111222334</p>
								</p>
							</div>
						</div>
					</div>
				</div>
			
	</div>
</section>
    <br />
    <br />
</center>



</asp:Content>
