<%-- 
    Document   : enregistrements
    Created on : 11 juin 2018, 10:12:59
    Author     : Asus R511L
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@page session="true" %>
<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body>
        
        <!-- Importation du fichier header.jsp -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <br>
        <ul class="tabs tabs-fixed-width tab-demo z-depth-1" style="position: relative; width: 90%;">
            <li class="tab"><a href="#inscription">Inscription</a></li>
            <li class="tab"><a href="#commande">Commande</a></li>
            <li class="tab"><a href="#stock">Stock</a></li>
        </ul>
        <br>
        
        <div id="commande" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em;">Enregistrement des membres qui pourront avoir un accès total à l'application. Veuilez remplir les champs ci-dessous.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return validateUser();" name="user" id="user" method="post" action="enregistrementUtilisateur">
                    <div class="row">
                        
                    </div>
                </form>
            </div>
        </div>
        
        <div id="inscription" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em;">Enregistrement des membres qui pourront avoir un accès total à l'application. Veuilez remplir les champs ci-dessous.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return validateUser();" name="user" id="user" method="post" action="enregistrementUtilisateur">
                    <div class="row">
                        
                    </div>
                </form>
            </div>
        </div>
        
        <div id="stock" class="col s12 center">
            <p style="text-align: center; font-family: Verdana; font-size: 1.5em;">Enregistrement des membres qui pourront avoir un accès total à l'application. Veuilez remplir les champs ci-dessous.</p>
            <div class="row" style="position: relative; width: 70%; margin-left: 15%;">
                <form class="col s12" onsubmit="return validateUser();" name="user" id="user" method="post" action="enregistrementUtilisateur">
                    <div class="row">
                        
                    </div>
                </form>
            </div>
        </div>
        
        <script>
            M.AutoInit();
        </script>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>
