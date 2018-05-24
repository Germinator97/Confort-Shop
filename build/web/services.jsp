<%-- 
    Document   : services
    Created on : 11 mai 2018, 16:31:15
    Author     : Asus R511L
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body style="background-color: whitesmoke;">
        
        <!-- Importation du fichier header.jsp -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <br><br><br><br>
        
        <p style="text-align: center; font-family: verdana; font-size: 2em;">Vous trouverez ici tous nos différents services que nous vous offrons</p>
        <div class="card-deck" style="position: relative; text-align: center; width: 90%; margin-left: 5%;">
            <a class="btn btn-default" href="nouveau.jsp" style="position: relative; width: 24%; padding: 2%;">
                <div>
                    <img />
                    <p>Ajouter une image de magasin et un texte</p>
                </div>
            </a>
            <a class="btn btn-default" href="achats.jsp" style="position: relative; width: 24%; padding: 2%;">
                <div>
                    <img />
                    <p>Ajouter une image de achat et un texte</p>
                </div>
            </a>
            <a class="btn btn-default" href="ventes.jsp" style="position: relative; width: 24%; padding: 2%;">
                <div>
                    <img />
                    <p>Ajouter une image de vente et un texte</p>
                </div>
            </a>
            <a class="btn btn-default" href="comptabilite.jsp" style="position: relative; width: 24%; padding: 2%;">
                <div>
                    <img />
                    <p>Ajouter une image de comptabilite et un texte</p>
                </div>
            </a>
        </div>
        <br>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>