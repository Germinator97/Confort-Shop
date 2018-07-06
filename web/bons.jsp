<%-- 
    Document   : bons
    Created on : 4 juin 2018, 10:49:21
    Author     : Asus R511L
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('images/slider2.jpg') 50% fixed; background-size: cover;">
        
        <!-- Importation du fichier header.jsp -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <br><br><br><br>
        
        <p style="text-align: center; font-family: verdana; font-size: 2em;">Les bons de commandes</p>
        <form style="position: relative; width: 30%; margin-left: 30%;">
            <input type="text" class="form-control" id="rechercheProduit" placeholder="Entrez le numéro du bon de commande" required="required">
            <button type="submit" class="btn btn-primary" style="position: relative; margin-left: 110%; margin-top: -14%;">Rechercher</button>
        </form>
        <div id="commande">
            
        </div>
        
        <br><br>
        
        <p style="text-align: center; font-family: verdana; font-size: 2em;">Les bons de livraisons</p>
        <form style="position: relative; width: 30%; margin-left: 30%;">
            <input type="text" class="form-control" id="rechercheProduit" placeholder="Entrez le numéro du bon de livraison" required="required">
            <button type="submit" class="btn btn-primary" style="position: relative; margin-left: 110%; margin-top: -14%;">Rechercher</button>
        </form>
        <div id="livraison">
            
        </div>
        <br>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>