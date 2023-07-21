<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MedZeeSolution.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
       <div class="cont">
    <div class="form sign-in">
                  <h2>Sign In</h2>
      <label>
        <span>Email Address</span>
          <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
      </label>
      <label>
        <span>Password</span>
          <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>        
      </label>
        <asp:Button ID="btnSignIn" CssClass="submit" Text="Sign In" class="submit" runat="server" OnClick="btnSignIn_Click"/>      
      <p class="forgot-pass">Forgot Password ?</p>

      <div class="social-media">
        <ul>
          <li><img src="images/facebook.png"/></li>
          <li><img src="images/twitter.png"/></li>
          <li><img src="images/instagram.png"/></li>
        </ul>
      </div>

    </div>

    <div class="sub-cont">
      <div class="img">
        <div class="img-text m-up">
          <h2>New to MedZee?</h2>
          <p>Register Now</p>
        </div>
        <div class="img-text m-in">
          <h2>Already Registered?</h2>
          <p>Please Sign in</p>
        </div>
        <div class="img-btn">
          <span class="m-up">Register</span>
          <span class="m-in">Sign In</span>
        </div>
      </div>
      <div class="form sign-up">
        <h2>Register</h2>
        <label>
          <span>Name</span>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </label>
        <label>
          <span>Email</span>
            <asp:TextBox ID="txtEmail" TextMode="Email" runat="server"></asp:TextBox>
        </label>
		<label>
          <span>Password</span>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        </label>
		<label>
          <span>Human Verification:2+2</span>
            <asp:HiddenField ID="hdnVerification" runat="server"/>
            <asp:TextBox ID="txtVerification" TextMode="Number" runat="server"></asp:TextBox>          
        </label>
          <asp:Button ID="btnSignup" class="submit" Text="Register Now" CssClass="submit" runat="server" OnClick="btnSignup_Click"/>
        <%--<button type="button" class="submit">Register Now</button>--%>

      </div>
    </div>
  </div>
    </form>
    <script type="text/javascript" src="js/script.js"></script>
</body>
</html>
