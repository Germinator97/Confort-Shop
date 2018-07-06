<%-- 
    Document   : produits
    Created on : 5 avr. 2018, 00:10:17
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('images/liquidation.png') 50% fixed; background-size: cover;">
        
        <!-- Importation du fichier header.jsp -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/boutique" user = "root"  password = ""/>
        
        <br><br><br><br>
        
        <p style="text-align: center; font-family: verdana; font-size: 2em;">Nos produits !!!</p>
        <form style="position: relative; width: 30%; margin-left: 30%;">
            <input type="text" class="form-control" id="rechercheProduit" placeholder="Entrez le nom du produit à rechercher" required="required">
            <button type="submit" class="btn btn-primary" style="position: relative; margin-left: 110%; margin-top: -14%;">Rechercher</button>
        </form>
        <sql:query dataSource="${lecture}" var="categories">
                SELECT * FROM categorie;
            </sql:query>
            <c:forEach var="categorie" begin="0" items="${categories.rows}">
        <div class="jumbotron" style="position: relative; text-align: center; margin-left: 2%; margin-right: 2%; background-color: whitesmoke;">
            <h1><c:out value="${categorie.nom}"/></h1>
            <hr class="my-4">
            <sql:query dataSource="${lecture}" var="produits">
                SELECT * FROM produit WHERE produit.categorie=${categorie.id};
            </sql:query>
            
            <div class="card-deck" style="position: relative; width: 100%; text-align: center; padding-left: 2%;">
                <c:forEach var="produit" begin="0" items="${produits.rows}">
                <div class="card">
                    <br>
                    <img class="card-img-top" src="images/customer-service.svg" alt="Card image cap" style="position: relative; width: 50%; margin-left: 25%; top: 2%;">
                    <div class="card-body">
                        <h5 class="card-title"><c:out value="${produit.nom}"/></h5>
                        <p class="card-text"><c:out value="${produit.caracteristiques}"/></p>
                        <p class="card-text">Prix : <c:out value="${produit.prix}"/></p>
                        <a href="produit.jsp" class="btn btn-light-blue">Détails</a>
                    </div>
                    <div class="card-footer">
                        <div>
                            <small class="text-muted">Quantité en stock : <c:out value="${produit.quantite}"/></small>
                        </div>
                        <a href="produit.jsp" class="btn btn-tb btn-blue-grey">Ajouter au panier</a>
                    </div>
                </div>
                </c:forEach>
            </div>
            
        </div>
            </c:forEach>
        <hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;"><br>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>