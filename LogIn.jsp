<%-- 
    Document   : LogIn
    Created on : May 6, 2018, 9:52:03 PM
    Author     : gigisan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>Welcome to Espers!</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div id="site_title">
                    <h1><a href="LogIn.jsp">Espers</a></h1>
                </div>
            </div>
            
            <div id="main">
                <div id="contact"></div>
                <div class="context_box">
                    <div class="cleaner h50"></div>
                    <div id="contact_form">
                            
        <% String error = (String)request.getAttribute("LOGIN_ERROR")!=null?request.getAttribute("LOGIN_ERROR").toString():""; %>
        <% out.print(error); %>                             
                       
                        <form name="Log" action="Logincontroller" method="POST">
                            <input type="text" name="first" size="50" class="input_field" placeholder="FirstName" required />
                            <div class="cleaner h10"></div>

                            <input type="password" name="pass" size="50" class="input_field" placeholder="Enter Password" required />
                            <div class="cleaner h10"></div>

                            <input type="reset" value="Clear" name="clear" class="submit_btn float_l" />
                            <input type="submit" value="Log In" name="login" class="submit_btn float_r" />
                        </form>
                    </div>
                </div>
                <div class="cleaner h10"></div>
               
                <div id="w360">
                    <form action="index.jsp" class="button_form">
                        <input type="submit" value="Create account" class="button"/>
                    </form> 
                </div>
            </div>
            
            <div id="footer">
	       <a href="LogIn.jsp">Home</a> |   
               <a href="#">FAQs</a> | 
               <a href="#">Contact Us</a>
               <br /> Copyright © 2024 
               <a href="#"><strong>Espers</strong></a> 
            </div> 
        </div> <%--end of container--%>
    </body>
</html>
