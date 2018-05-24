<%-- 
    Document   : panier
    Created on : 6 avr. 2018, 11:34:39
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
        
        <p style="text-align: center; font-family: verdana; font-size: 2em;">Mon panier</p>
        <table class="table" style="position: relative; width: 80%; margin-left: 10%;">
            <thead>
                <tr class="table-active">
                    <th scope="col" style="font-size: 1.5em;">#</th>
                    <th scope="col" style="font-size: 1.5em;">Produit</th>
                    <th scope="col" style="font-size: 1.5em;">Prix</th>
                    <th scope="col" style="font-size: 1.5em;">Quantité</th>
                    <th scope="col" style="font-size: 1.5em;">Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <br>
                        <a style="color: red;">
                            <i class="fa fa-times"></i>
                        </a>
                    </td>
                    <td>
                        <div class="card-deck">
                            <div style="width: 10%; height: 10%; border: 1px solid black; margin-right: 5%;">
                                <img src="images/skyline.svg">
                            </div>
                            <div>
                                <h5 style="font-size: 1.3em;">Nom du produit</h5>
                                <p style="font-size: 1.3em;">Les caractéristiques du produit</p>
                            </div>
                        </div>
                    </td>
                    <td style="font-size: 1.3em;">€0,00</td>
                    <td>
                        <select class="custom-select" id="inputGroupSelect01" style="position: relative; width: 50%; font-size: 1.3em;">
                            <option selected>1</option>
                            <option value="1">2</option>
                            <option value="2">3</option>
                            <option value="3">4</option>
                            <option value="4">...</option>
                        </select>
                    </td>
                    <td style="font-size: 1.3em;">€0,00</td>
                </tr>
                <tr>
                    <td>
                        <br>
                        <a style="color: red;">
                            <i class="fa fa-times"></i>
                        </a>
                    </td>
                    <td>
                        <div class="card-deck">
                            <div style="width: 10%; height: 10%; border: 1px solid black; margin-right: 5%;">
                                <img src="images/skyline.svg">
                            </div>
                            <div>
                                <h5 style="font-size: 1.3em;">Nom du produit</h5>
                                <p style="font-size: 1.3em;">Les caractéristiques du produit</p>
                            </div>
                        </div>
                    </td>
                    <td style="font-size: 1.3em;">€0,00</td>
                    <td>
                        <select class="custom-select" id="inputGroupSelect01" style="position: relative; width: 50%; font-size: 1.3em;">
                            <option selected>1</option>
                            <option value="1">2</option>
                            <option value="2">3</option>
                            <option value="3">4</option>
                            <option value="4">...</option>
                        </select>
                    </td>
                    <td style="font-size: 1.3em;">€0,00</td>
                </tr>
            </tbody>
        </table>
        <table class="table" style="position: relative; width: 80%; margin-left: 10%;">
            <thead>
                <tr class="table-active">
                    <th scope="col"><a href="produits.jsp">
                            <i class="fa fa-plus fa-2x"></i>
                        </a></th>
                    <th scope="col" style="font-size: 1.3em;">Ajouter un nouveau produit a votre panier</th>
                </tr>
            </thead>
        </table>
        <p style="position: relative; margin-left: 60%; font-family: verdana; font-size: 1.7em;">Total panier</p>
        <div style="position: relative; width: 30%; margin-left: 60%; ">
            <table class="table">
                <tbody>
                  <tr>
                      <th scope="row" style="font-size: 1.3em;">Sous-total</th>
                    <td style="font-size: 1.3em;">€0,00</td>
                  </tr>
                  <tr>
                    <th scope="row" style="font-size: 1.3em;">Livraison</th>
                    <td style="font-size: 1.3em;">€0,00</td>
                  </tr>
                  <tr class="table-active">
                    <th scope="row" style="font-size: 2em;">Total</th>
                    <td style="font-size: 2em;">€0,00</td>
                  </tr>
                </tbody>
            </table>
        </div>
        <a class="btn btn-primary btn-lg" href="commande.jsp" role="button" style="position: relative; margin-left: 60%;">Procéder à la commande</a>
        
        <br><br>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>
