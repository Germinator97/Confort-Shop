<%-- 
    Document   : produit
    Created on : 5 avr. 2018, 14:22:01
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <head>
        
        <!-- Importation du fichier head.jsp -->
        <jsp:include page="head.jsp"></jsp:include>
    </head>
    
    
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('images/4.jpg') 50% fixed; background-size: cover;">
        
        <!-- Importation du fichier header.jsp -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <br><br><br><br>
        
        <div class="row" style="position: relative; margin-left: 20%; margin-right: 20%;">
            <div class="col-sm-6">
              <div class="card">
                <div class="card-body">
                    <img src="images/customer-service.svg">
                </div>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="card">
                <div class="card-body">
                    <h1 class="card-title">Nom du produit</h1>
                    <p class="card-text"><s>Ancien prix</s> - Nouveau prix</p>
                    <hr>
                    <p><span style="color: green;">Efficace</span> et <span style="color: red;">splendide</span></p>
                    <ul>
                        <li>Caractéristique 1</li>
                        <li>Caractéristique 2</li>
                        <li>Caractéristique 3</li>
                        <li>...</li>
                        <li>Lieu de fabrication</li>
                        <li>Fournisseur</li>
                    </ul>
                    <br>
                    <div>
                        Quantité
                        <select class="custom-select" id="quantite" style="position: relative; width: 20%; font-size: 1.3em;">
                            <option selected>1</option>
                            <option value="1">2</option>
                            <option value="2">3</option>
                            <option value="3">4</option>
                            <option value="4">...</option>
                        </select>
                  </div>
                  <br>
                  <a href="#" class="btn btn-primary">Ajouter au panier</a>
                </div>
              </div>
            </div>
        </div>
        
        <br><br>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>