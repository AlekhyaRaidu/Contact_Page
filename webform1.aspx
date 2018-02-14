<%@ Page Title="WebForm" Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <style>
        #style1 {
            align-content: center;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            width: 75%;
            height: 200px;
            background-color: lightblue;
            vertical-align: middle;
            height : 100%;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div id="style1">
            <h3><%=Session["fname"] %> !! Thank you for contacting us... </h3>
            <h5>Your comment/question has been received and delivered to the appropriate department.</h5>
            <h5>For future reference your reference number is <%=Session["reference"] %> </h5> 
            <h5>You will also receive an email acknowledging we have received your comment/question.</h5>
            <h5>you will be contacted by the appropriate department.</h5>

        </div>
            </center>
    </form>
</body>
</html>