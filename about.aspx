<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <head>
        <link href="style.css" type="text/css" rel="stylesheet">
        <link href="font-awesome.min.css" type="text/css" rel="stylesheet">
        <link href="bavn_css.css" type="text/css" rel="stylesheet">
         <link href="tablesorter.css" type="text/css" rel="stylesheet">
        <link href="tipTip.css" type="text/css" rel="stylesheet">
    
    </head>
    <body> 
        <br />
        <br />
        <div class="m-b-sm">
            <div class="bavn_BODY">
                <div class="bavn_TABS">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tabtitle">
                        <tr>
                            <td class="bottomBorder" nowrap></td>
                        </tr>
                    </table>
                </div>
                <div class="container">
                    <div class="p-tb-xs text-center">
                        <h1 class="page-title">Contact Us</h1>
                   </div>
                </div>
             
                <div class="alert alert-info" role="info">
                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span> Please provide the information below
                </div>


                <div class="container text-center p-t-xs m-b-sm">

                    <div class="login-card well m-tb-lg">
                        <form method="post"  action="~/About.aspx">
                           
                            <div class="form-group row">
                                <label for="userName" id="fname" class="col-sm-4 control-label p-t-xs" style="font-size: 1.3em;">FirstName<em>*</em>:</label>
                                <div class="col-sm-8">
                                   <input name="fname" type="text" class="form-control input-md" placeholder="Firstname" />
                                </div>
                               </div>

                               <div class="form-group row">
                                <label for="userName" id="lname" class="col-sm-4 control-label p-t-xs" style="font-size: 1.3em;">LastName<em>*</em>:</label>
                                <div class="col-sm-8">
                                   <input name="lname" type="text" class="form-control input-md" placeholder="Lastname" />
                                </div>
                               </div>

                            <div class="form-group row">
                                <label for="userName" class="col-sm-4 control-label p-t-xs" style="font-size: 1.3em;">E-mail<em>*</em>:</label>
                                <div class="col-sm-8">
                                    <input name="email" type="email" class="form-control input-md" placeholder="enter your email" />

                                </div>
                                </div>
                                
                            <div class="form-group row">
                                    <label for="userName" class="col-sm-4 control-label p-t-xs" style="font-size: 1.3em;">Topic<em>*</em>:</label>
                                    <div class="col-sm-8">
                              <select name="topic" id="topic"  class="form-control" >
                                           
                                                <option value="My Account">My Account
                                                </option>
                                                <option value="Registration">Registration
                                                </option>
                                                <option value="Opportunities - general ">Opportunities - general 
                                                </option>
                                                <option value=" Opportunities - specific">Opportunities - specific</option>
                                                <option value="NAICS Codes">NAICS Codes</option>
                                                <option value="Certifications">Certifications</option>
                                                <option value="Compliance Document">Compliance Document   </option>
                                    
                                    </select>                 
                                        </div>
                                </div>
                           
                            <div class="form-group row">
                                <label for="userName" class="col-sm-4 control-label p-t-xs" style="font-size: 1.3em;">Comment<em>*</em>:</label>
                                <div class="col-sm-8">
                                    <input name="comment" type="text" class="form-control input-md" placeholder="Your comment here.." />

                                </div>
                            </div>
                            <br />
                            <br />
                           
                            <div class="form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
 
          
        
            <input id="search-bid-form-submit" type="submit" value="Send" name="send" class="btn btn-secondary btn-lg btn-xl m-tb-xs p-b-xs btn-block" style="font-size:1.2em;color: #fff;background-color: #f0a336; ">
            </div>
            <div class="col-sm-2"></div>
        </div>

                                </div>

                            </div>
                            

                        </form>

                    </div>
                    </div>
                </div>
         </div>
    </body>
</asp:Content>