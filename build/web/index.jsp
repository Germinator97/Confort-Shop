<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>

<html>
    
    <head>
        <!-- Importation du fichier head.jsp -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('images/slider2.jpg') 50% fixed; background-size: cover;">
        
        <!-- Importation du fichier header.jsp -->
        <jsp:include page="header.jsp"></jsp:include>
        
<%--
        <sql:setDataSource var = "lecture" driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver" url = "jdbc:sqlserver://localhost;database=Connexion;integratedSecurity=true;"/>
        
        <sql:query dataSource = "${lecture}" var = "comptes">
            select * from Compte;
        </sql:query>
            <ul>
            <c:forEach var="compte" begin="0" items="${comptes.rows}">
                <li>
                    <c:out value="${compte.username}"/>
                </li>
            </c:forEach>
            </ul>
--%>
        <br><br><br>
        <marquee><p style="font-family: verdana; font-size: 1.5em;">Bienvenue à ConfortShop. Passer vos différentes commandes et nous serons ravis de vous les faire parvenir.</p></marquee>
        <p style="text-align: center; font-family: verdana; font-size: 2.5em;">Nos produits en promo !!!</p>
        <br>
        <div class="card-deck" style="position: relative; width: 90%; text-align: center; padding-left: 12%;">
            <div class="card">
                <br>
                <img class="card-img-top" src="images/customer-service.svg" alt="Card image cap" style="position: relative; width: 50%; margin-left: 25%; top: 2%;">
                <div class="card-body">
                    <h5 class="card-title">Nom du produit</h5>
                    <p class="card-text">Les caractéristiques du produit</p>
                    <p class="card-text"><s>Ancien prix</s> - Nouveau prix</p>
                    <a href="produit.jsp" class="btn btn-light-blue">Détails</a>
                </div>
                <div class="card-footer">
                    <div>
                        <small class="text-muted">Quantité en stock :</small>
                        <br>
                        <small class="text-muted">Valeur</small>
                    </div>
                    <a href="produit.jsp" class="btn btn-tb btn-blue-grey">Ajouter au panier</a>
                </div>
            </div>
            <div class="card">
                <br>
                <img class="card-img-top" src="images/customer-service.svg" alt="Card image cap" style="position: relative; width: 50%; margin-left: 25%; top: 2%;">
                <div class="card-body">
                    <h5 class="card-title">Nom du produit</h5>
                    <p class="card-text">Les caractéristiques du produit</p>
                    <p class="card-text"><s>Ancien prix</s> - Nouveau prix</p>
                    <a href="produit.jsp" class="btn btn-light-blue">Détails</a>
                </div>
                <div class="card-footer">
                    <div>
                        <small class="text-muted">Quantité en stock :</small>
                        <br>
                        <small class="text-muted">Valeur</small>
                    </div>
                    <a href="produit.jsp" class="btn btn-tb btn-blue-grey">Ajouter au panier</a>
                </div>
            </div>
            <div class="card">
                <br>
                <img class="card-img-top" src="images/customer-service.svg" alt="Card image cap" style="position: relative; width: 50%; margin-left: 25%; top: 2%;">
                <div class="card-body">
                    <h5 class="card-title">Nom du produit</h5>
                    <p class="card-text">Les caractéristiques du produit</p>
                    <p class="card-text"><s>Ancien prix</s> - Nouveau prix</p>
                    <a href="produit.jsp" class="btn btn-light-blue">Détails</a>
                </div>
                <div class="card-footer">
                    <div>
                        <small class="text-muted">Quantité en stock :</small>
                        <br>
                        <small class="text-muted">Valeur</small>
                    </div>
                    <a href="produit.jsp" class="btn btn-tb btn-blue-grey">Ajouter au panier</a>
                </div>
            </div>
            <div class="card">
                <br>
                <img class="card-img-top" src="images/customer-service.svg" alt="Card image cap" style="position: relative; width: 50%; margin-left: 25%; top: 2%;">
                <div class="card-body">
                    <h5 class="card-title">Nom du produit</h5>
                    <p class="card-text">Les caractéristiques du produit</p>
                    <p class="card-text"><s>Ancien prix</s> - Nouveau prix</p>
                    <a href="produit.jsp" class="btn btn-light-blue">Détails</a>
                </div>
                <div class="card-footer">
                    <div>
                        <small class="text-muted">Quantité en stock :</small>
                        <br>
                        <small class="text-muted">Valeur</small>
                    </div>
                    <a href="produit.jsp" class="btn btn-tb btn-blue-grey">Ajouter au panier</a>
                </div>  
            </div>
        </div>
        <br>
        <hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;"><br>
        <p style="text-align: center; font-family: verdana; font-size: 2em;">Nos services</p>
        <p style="text-align: center; font-family: verdana; font-size: 1em;">Reservé aux personnels</p>
        <div class="card-deck" style="position: relative; text-align: center; width: 80%; margin-left: 20%;">
            <a class="btn btn-default" href="loginMagasin.jsp" style="position: relative; width: 18%;">
                <img src="images/customer-service.svg" style="position: relative; width: 50%;" />
                <br><br>
                <p style="text-align: center; font-family: verdana; font-size: 1.2em;">Magasin</p>
            </a>
            <a class="btn btn-default" href="loginAchat.jsp" style="position: relative; width: 18%;">
                <img src="images/clipboard.svg" style="position: relative; width: 50%;" />
                <br><br>
                <p style="text-align: center; font-family: verdana; font-size: 1.2em;">Achat</p>
            </a>
            <a class="btn btn-default" href="loginVente.jsp" style="position: relative; width: 18%;">
                <img src="images/shopping-basket.svg" style="position: relative; width: 50%;" />
                <br><br>
                <p style="text-align: center; font-family: verdana; font-size: 1.2em;">Vente</p>
            </a>
            <a class="btn btn-default" href="loginComptabilite.jsp" style="position: relative; width: 18%;">
                <img src="images/cash-register.svg" style="position: relative; width: 50%;" />
                <br><br>
                <p style="text-align: center; font-family: verdana; font-size: 1.2em;">Comptabilité</p>
            </a>
        </div>
        <br><hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;"><br>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>    
    
</html>
