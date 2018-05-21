<%-- 
    Document   : Home
    Created on : May 6, 2018, 9:52:41 PM
    Author     : gigisan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "javax.servlet.http.HttpSession" %>
<html>
   
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Account</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div id="site_title">
                    <h1><a href="Home.jsp">Espers</a></h1>
                </div>
                <div class="float_r">
                    <img src="images/user-profile.png" />
                    <% String user = (String)session.getAttribute("user")!=null?session.getAttribute("user").toString():""; %>
                    <% out.print("Hello, "+user+"<br>"); %>
                    <img src="images/log-out.png" /><a href="Logoutcontroller">Log Out</a>
                </div>
            </div>
            <div id="main">
                <h1 class="center margin_left50">Books</h1>
                <div class="cleaner h50"></div>
                
                <table id="book_table">
                    <tbody>
                        <tr>
                            <td>
                                <h3>Enchantment</h3>
                                <h4>Guy Kawasaki</h4>
                                <img src="b1.jpg" />
                                <fieldset class="rating w140">
                                    <input type="radio" id="star5_1" name="rating_1" value="5" />
                                    <label class = "full" for="star5_1" title="Awesome - 5 stars"></label>
                                    
                                    <input type="radio" id="star4_1" name="rating_1" value="4" />
                                    <label class = "full" for="star4_1" title="Good - 4 stars"></label>
                                    
                                    <input type="radio" id="star3_1" name="rating_1" value="3" />
                                    <label class = "full" for="star3_1" title="Average - 3 stars"></label>
                                    
                                    <input type="radio" id="star2_1" name="rating_1" value="2" />
                                    <label class = "full" for="star2_1" title="Bad - 2 stars"></label>
                                    
                                    <input type="radio" id="star1_1" name="rating_1" value="1" />
                                    <label class = "full" for="star1_1" title="Terrible - 1 star"></label>
                                </fieldset>
                                <div class="cleaner h10"></div>
                                <a href="a1.wav" download class="download_button">Download</a>
                            </td>
                            <td>
                                <h3>Just Courage</h3>
                                <h4>Gary A. Haugen</h4>
                                <img src="b2.jpg" />
                                <fieldset class="rating w140">
                                    <input type="radio" id="star5_2" name="rating_2" value="5" />
                                    <label class="full" for="star5_2" title="Awesome - 5 stars"></label>
                                    
                                    <input type="radio" id="star4_2" name="rating_2" value="4" />
                                    <label class="full" for="star4_2" title="Good - 4 stars"></label>
                                    
                                    <input type="radio" id="star3_2" name="rating_2" value="3" />
                                    <label class = "full" for="star3_2" title="Average - 3 stars"></label>
                                    
                                    <input type="radio" id="star2_2" name="rating_2" value="2" />
                                    <label class = "full" for="star2_2" title="Bad - 2 stars"></label>
                                    
                                    <input type="radio" id="star1_2" name="rating_2" value="1" />
                                    <label class = "full" for="star1_2" title="Terrible - 1 star"></label>
                                </fieldset>
                                <div class="cleaner h10"></div>
                                <a href="a2.wav" download class="download_button">Download</a>
                            </td>
                            <td>
                                <h3>The World Of Abstract Art</h3>
                                <h4>Emily Robbins</h4>
                                <img src="b3.jpg" />
                                <fieldset class="rating w140">
                                    <input type="radio" id="star5_3" name="rating_3" value="5" />
                                    <label class = "full" for="star5_3" title="Awesome - 5 stars"></label>
                                    
                                    <input type="radio" id="star4_3" name="rating_3" value="4" />
                                    <label class = "full" for="star4_3" title="Good - 4 stars"></label>
                                    
                                    <input type="radio" id="star3_3" name="rating_3" value="3" />
                                    <label class = "full" for="star3_3" title="Average - 3 stars"></label>
                                    
                                    <input type="radio" id="star2_3" name="rating_3" value="2" />
                                    <label class = "full" for="star2_3" title="Bad - 2 stars"></label>
                                    
                                    <input type="radio" id="star1_3" name="rating_3" value="1" />
                                    <label class = "full" for="star1_3" title="Terrible - 1 star"></label>
                                </fieldset>
                                <div class="cleaner h10"></div>
                                <a href="a3.wav" download class="download_button">Download</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3>How To Be The Perfect Dutch</h3>
                                <h4>Kathian Brands</h4>
                                <img src="b4.jpg" />
                                <fieldset class="rating w140">
                                    <input type="radio" id="star5_4" name="rating_4" value="5" />
                                    <label class = "full" for="star5_4" title="Awesome - 5 stars"></label>
                                    
                                    <input type="radio" id="star4_4" name="rating_4" value="4" />
                                    <label class = "full" for="star4_4" title="Good - 4 stars"></label>
                                    
                                    <input type="radio" id="star3_4" name="rating_4" value="3" />
                                    <label class = "full" for="star3_4" title="Average - 3 stars"></label>
                                    
                                    <input type="radio" id="star2_4" name="rating_4" value="2" />
                                    <label class = "full" for="star2_4" title="Bad - 2 stars"></label>
                                    
                                    <input type="radio" id="star1_4" name="rating_4" value="1" />
                                    <label class = "full" for="star1_4" title="Terrible - 1 star"></label>
                                </fieldset>
                                <div class="cleaner h10"></div>
                                <a href="a4.wav" download class="download_button">Download</a>
                            </td>
                            <td>
                                <h3>The Lake</h3>
                                <h4>Banana Yoshimoto</h4>
                                <img src="b5.jpg" />
                                <fieldset class="rating w140">
                                    <input type="radio" id="star5_5" name="rating_5" value="5" />
                                    <label class = "full" for="star5_5" title="Awesome - 5 stars"></label>
                                    
                                    <input type="radio" id="star4_5" name="rating_5" value="4" />
                                    <label class = "full" for="star4_5" title="Good - 4 stars"></label>
                                    
                                    <input type="radio" id="star3_5" name="rating_5" value="3" />
                                    <label class = "full" for="star3_5" title="Average - 3 stars"></label>
                                    
                                    <input type="radio" id="star2_5" name="rating_5" value="2" />
                                    <label class = "full" for="star2_5" title="Bad - 2 stars"></label>
                                    
                                    <input type="radio" id="star1_5" name="rating_5" value="1" />
                                    <label class = "full" for="star1_5" title="Terrible - 1 star"></label>
                                </fieldset>
                                <div class="cleaner h10"></div>
                                <a href="a5.wav" download class="download_button">Download</a>
                            </td>
                            <td>
                                <h3>Game Of Thrones</h3>
                                <h4>George R. R. Martin</h4>
                                <img src="b6.jpg" />
                                <fieldset class="rating w140">
                                    <input type="radio" id="star5_6" name="rating_6" value="5" />
                                    <label class = "full" for="star5_6" title="Awesome - 5 stars"></label>
                                    
                                    <input type="radio" id="star4_6" name="rating_6" value="4" />
                                    <label class = "full" for="star4_6" title="Good - 4 stars"></label>
                                    
                                    <input type="radio" id="star3_6" name="rating_6" value="3" />
                                    <label class = "full" for="star3_6" title="Average - 3 stars"></label>
                                    
                                    <input type="radio" id="star2_6" name="rating_6" value="2" />
                                    <label class = "full" for="star2_6" title="Bad - 2 stars"></label>
                                    
                                    <input type="radio" id="star1_6" name="rating_6" value="1" />
                                    <label class = "full" for="star1_6" title="Terrible - 1 star"></label>
                                </fieldset>
                                <div class="cleaner h10"></div>
                                <a href="a6.wav" download class="download_button">Download</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3>Snow White Must Die</h3>
                                <h4>Nele Neuhaus</h4>
                                <img src="b7.jpg" />
                                <fieldset class="rating w140">
                                    <input type="radio" id="star5_7" name="rating_7" value="5" />
                                    <label class = "full" for="star5_7" title="Awesome - 5 stars"></label>
                                    
                                    <input type="radio" id="star4_7" name="rating_7" value="4" />
                                    <label class = "full" for="star4_7" title="Good - 4 stars"></label>
                                    
                                    <input type="radio" id="star3_7" name="rating_7" value="3" />
                                    <label class = "full" for="star3_7" title="Average - 3 stars"></label>
                                    
                                    <input type="radio" id="star2_7" name="rating_7" value="2" />
                                    <label class = "full" for="star2_7" title="Bad - 2 stars"></label>
                                    
                                    <input type="radio" id="star1_7" name="rating_7" value="1" />
                                    <label class = "full" for="star1_7" title="Terrible - 1 star"></label>
                                </fieldset>
                                <div class="cleaner h10"></div>
                                <a href="a7.wav" download class="download_button">Download</a>
                            </td>
                            <td>
                                <h3>Mobile First</h3>
                                <h4>Luke Wroblewski</h4>
                                <img src="b8.png" />
                                <fieldset class="rating w140">
                                    <input type="radio" id="star5_8" name="rating_8" value="5" />
                                    <label class = "full" for="star5_8" title="Awesome - 5 stars"></label>
                                    
                                    <input type="radio" id="star4_8" name="rating_8" value="4" />
                                    <label class = "full" for="star4_8" title="Good - 4 stars"></label>
                                    
                                    <input type="radio" id="star3_8" name="rating_8" value="3" />
                                    <label class = "full" for="star3_8" title="Average - 3 stars"></label>
                                    
                                    <input type="radio" id="star2_8" name="rating_8" value="2" />
                                    <label class = "full" for="star2_8" title="Bad - 2 stars"></label>
                                    
                                    <input type="radio" id="star1_8" name="rating_8" value="1" />
                                    <label class = "full" for="star1_8" title="Terrible - 1 star"></label>
                                </fieldset>
                                <div class="cleaner h10"></div>
                                <a href="a8.wav" download class="download_button">Download</a>
                            </td>
                            <td>
                                <h3>Papercraft</h3>
                                <h4>Mandy Cooper</h4>
                                <img src="b9.png" />
                                <fieldset class="rating w140">
                                    <input type="radio" id="star5_9" name="rating_9" value="5" />
                                    <label class = "full" for="star5_9" title="Awesome - 5 stars"></label>
                                    
                                    <input type="radio" id="star4_9" name="rating_9" value="4" />
                                    <label class = "full" for="star4_9" title="Good - 4 stars"></label>
                                    
                                    <input type="radio" id="star3_9" name="rating_9" value="3" />
                                    <label class = "full" for="star3_9" title="Average - 3 stars"></label>
                                    
                                    <input type="radio" id="star2_9" name="rating_9" value="2" />
                                    <label class = "full" for="star2_9" title="Bad - 2 stars"></label>
                                    
                                    <input type="radio" id="star1_9" name="rating_9" value="1" />
                                    <label class = "full" for="star1_9" title="Terrible - 1 star"></label>
                                </fieldset>
                                <div class="cleaner h10"></div>
                                <a href="a9.wav" download class="download_button">Download</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="cleaner h20"></div>
            </div>
            
            <div id="footer">
	       <a href="LogIn.jsp">Home</a> |  
               <a href="#">FAQs</a> | 
               <a href="#">Contact Us</a>
               <br /> Copyright © 2024 
               <a href="#"><strong>Espers</strong></a> 
            </div> 
        </div>    
    </body>
</html>
