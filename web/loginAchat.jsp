<%-- 
    Document   : loginAdministration
    Created on : 29 mai 2018, 17:16:31
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Administration</title>
        <link rel="stylesheet" href="login.css">
    </head>
    <body>
        <div class="wrapper" style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('images/slider2.jpg') 50% fixed; background-size: cover;">
            <div class="container">
                <h1 style="font-weight: bold; color: green;">Bienvenue à Confort Shop</h1>
                <h2 style="font-weight: bold; color: black;">Connectez-vous pour accéder à votre tableau de bord</h2>
                <br>
                <form class="form" onsubmit="return validate();" id="connexion" name="connexion" method="post" action="loginAchat">
                    <input type="text" placeholder="Username" id="username" name="username">
                    <input type="password" placeholder="Password" id="password" name="password">
                    <button type="submit" id="login-button" name="valider">Login</button>
		</form>
            </div>
            <ul class="bg-bubbles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        
        <script>
            <%
            
                HttpSession hs = request.getSession();
                int id = 0;
                if (request.getAttribute("id")!= null) {
                    id = (Integer)request.getAttribute("id");
                    if (id != 0) {
                        session.setAttribute("username", request.getAttribute("username"));
                        session.setAttribute("id", id);
                        response.sendRedirect("achats.jsp");
                    }
                    else {
                        response.sendRedirect("loginAchat.jsp");
                    }
                }

            %>
            function validate() {
                
                var link = document.getElementById("connexion");
                
                var user = document.connexion.username.value;
                
                if (user === "") {
                    alert("Veuillez entrer votre nom d'utilisateur");
                    document.connexion.username.focus();
                    return false;
                }
                
                var pwd = document.connexion.password.value;
                var ilegal = /[\W_]/;
                
                if (pwd === "") {
                    alert("Veuillez entrer votre mot de passe");
                    document.connexion.password.focus();
                    return false;
                }
                
                else if (ilegal.test(pwd)) {
                    alert("Votre mot de passe contient des caractères non autorisés");
                    document.connexion.password.focus();
                    return false;
                }
            }
        </script>
    </body>
</html>