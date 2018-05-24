<%-- 
    Document   : produits
    Created on : 5 avr. 2018, 00:10:17
    Author     : germinator
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
        
        <p style="text-align: center; font-family: verdana; font-size: 2em;">Nos produits !!!</p>
        <form style="position: relative; width: 30%; margin-left: 30%;">
            <input type="text" class="form-control" id="rechercheProduit" placeholder="Entrez le nom du produit à rechercher" required="required">
            <button type="submit" class="btn btn-primary" style="position: relative; margin-left: 110%; margin-top: -14%;">Rechercher</button>
        </form>
        <div class="jumbotron" style="position: relative; text-align: center; margin-left: 2%; margin-right: 2%;">
            <h1>Alimentaires</h1>
            <hr class="my-4">
            <div class="card-deck" style="position: relative; width: 100%; text-align: center; padding-left: 2%;">
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
        </div>
        <hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;"><br>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>