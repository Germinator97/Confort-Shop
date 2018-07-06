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
    
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('images/shopper2.jpg') 50% fixed; background-size: cover;">
        
        <!-- Importation du fichier header.jsp -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <br><br><br><br>
        
        <p style="text-align: center; font-family: verdana; font-size: 2em;">Mon panier</p>
        <table class="table" style="position: relative; width: 80%; margin-left: 10%; background-color: whitesmoke;">
            <thead>
                <tr class="table-active">
                    <th scope="col" style="font-size: 1.5em;"></th>
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
                            <div style="width: 15%; height: 15%; margin-right: 5%;">
                                <img src="images/customer-service.svg">
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
                            <div style="width: 15%; height: 15%; margin-right: 5%;">
                                <img src="images/customer-service.svg">
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
        <table class="table" style="position: relative; width: 80%; margin-left: 10%; background-color: whitesmoke;">
            <thead>
                <tr class="table-active">
                    <th scope="col"><a href="produits.jsp">
                            <i class="fa fa-plus fa-2x"></i>
                        </a></th>
                    <th scope="col" style="font-size: 1.3em;">Ajouter un nouveau produit a votre panier</th>
                </tr>
            </thead>
        </table>
        <div style="position: relative; width: 30%; margin-left: 60%; background-color: whitesmoke;">
            
            <table class="table">
                <thead>
                    <tr class="table-active">
                        <th scope="row" style="font-size: 2em;">Total panier</th>
                        <th></th>
                     </tr>
                </thead>
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
        <a class="btn btn-primary" id="add" name="add" onclick="return addCommande();" role="button" style="position: relative; margin-left: 70%;">Procéder à la commande</a>
        <br><br>
        <div id="commande" name="commande"></div>
        
        <script>
            function dynamic() {
                return '<div><hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;"><br><p style="text-align: center; font-family: verdana; font-size: 2em;">Ma commande</p><form action="" name="myForm" method="POST" style="position: relative; width: 60%; margin-left: 22.3%;"><div style="width: 100%; padding-left: 6%; margin-left: -4%; background-color: whitesmoke;"><div class="card-deck"><div class="form-group" style="position: relative; margin-right: 28.5%;"><label for="pays" style="font-size: 1.3em;">Pays<strong style="color: red;"> *</strong></label><select name="selectPays" class="custom-select active" id="inputPays" style="position: relative; width: 192.6%;" required="required"><option selected value="Cote-d-Ivoire">Côte-d Ivoire</option><option value="Ghana">Ghana</option><option value="Togo">Togo</option><option value="France">France</option><option value="...">...</option></select></div><div class="form-group" style="margin-left: -0.9%;"><label for="entreprise" style="font-size: 1.3em;">Nom de l entreprise</label><input type="text" class="form-control active" id="inputEmtreprise" style="position: relative; width: 171%;"><div class="valid-feedback">Looks good!</div></div></div><div class="card-deck"><div class="form-group" style="position: relative; margin-right: 25%;"><label for="prenoms" style="font-size: 1.3em;">Prénoms<strong style="color: red;"> *</strong></label><input type="text" class="form-control active" id="inputPrenoms" style="position: relative; width: 170%;" required="required"><div class="valid-feedback">Looks good!</div></div><div class="form-group"><label for="noms" style="font-size: 1.3em;">Noms<strong style="color: red;"> *</strong></label><input type="text" class="form-control active" id="inputNoms" style="position: relative; width: 170%;" required="required"><div class="valid-feedback">Looks good!</div></div></div><div class="card-deck"><div class="form-group" style="position: relative; margin-right: 25%;"><label for="adresse" style="font-size: 1.3em;">Adresse<strong style="color: red;"> *</strong></label><input type="text" class="form-control active" id="inputAdresse1" placeholder="Adresse" style="position: relative; width: 170%;" required="required"><div class="valid-feedback">Looks good!</div></div><div class="form-group"><label for="adresse" style="font-size: 1.3em;">Adresse (optionnel)</label><input type="text" class="form-control active" id="inputAdresse2" placeholder="Appartement, bureau, etc (Optionnel)" style="position: relative; width: 170%;"></div></div><div class="card-deck"><div class="form-group" style="position: relative; margin-right: 25%;"><label for="postal" style="font-size: 1.3em;">Code postal</label><input type="text" class="form-control active" id="inputPostal" placeholder="Code postal" style="position: relative; width: 170%;"><div class="valid-feedback">Looks good!</div></div><div class="form-group"><label for="ville" style="font-size: 1.3em;">Ville<strong style="color: red;"> *</strong></label><input type="text" class="form-control active" id="inputVille" placeholder="Ville" style="position: relative; width: 170%;" required="required"><div class="valid-feedback">Looks good!</div></div></div><div class="card-deck"><div class="form-group" style="position: relative; margin-right: 25%;"><label for="adresseEmail" style="font-size: 1.3em;">Adresse email<strong style="color: red;"> *</strong></label><input type="email" class="form-control active" id="inputEmail" style="position: relative; width: 170%;" placeholder="ex: monsite@gmail.com" required="required"><div class="valid-feedback">Looks good!</div></div><div class="form-group"><label for="teleplhone" style="font-size: 1.3em;">Téléphone<strong style="color: red;"> *</strong></label><input type="text" class="form-control active" id="inputTelephone" style="position: relative; width: 170%;" required="required"><div class="valid-feedback">Looks good!</div></div></div></div><br><br><table class="table" style="margin-left: -4%; background-color: whitesmoke;""><thead><tr class="table-active"><th scope="col" style="font-size: 1.5em;">Produit</th><th scope="col" style="font-size: 1.5em;">Total</th></tr></thead><tbody><tr><td style="font-size: 1.3em;">Nom du produit - ses caractéristiques (xQuantité)</td><td style="font-size: 1.3em;">€0,00</td></tr><tr><td style="font-size: 1.3em;">Nom du produit - ses caractéristiques (xQuantité)</td><td style="font-size: 1.3em;">€0,00</td></tr><tr class="table-active"><td style="font-size: 1.5em;">Sous-total</td><td style="font-size: 1.5em;">€0,00</td></tr><tr><td style="font-size: 1.5em;">Livraison</td><td style="font-size: 1.5em;">€0,00</td></tr><tr><td style="font-size: 1.5em;">Total</td><td style="font-size: 1.5em;">€0,00</td></tr><tr><td style="font-size: 1.3em;"><div class="custom-control custom-radio"><input class="custom-control-input" type="radio" name="paiement" id="checkBancaire" value="bancaire"><label class="custom-control-label" for="checkBancaire">Virement bancaire</label></div><div class="custom-control custom-radio"><input class="custom-control-input" type="radio" name="paiement" id="checkEspece" value="espece" checked><label class="custom-control-label" for="checkEspece">Paiement en espèce</label></div><div class="custom-control custom-radio"><input class="custom-control-input" type="radio" name="paiement" id="checkCheque" value="cheque"><label class="custom-control-label" for="checkCheque">Paiement par chèque</label></div></td><td></td></tr></tbody></table><hr><div style="position: relative; margin-left: 57%;"><button type="submit" name="commander" id="commander" class="btn btn-primary">Commander</button><button name="remove" id="remove" onclick="return removeCommande(this)" class="btn btn-primary">Annuler</button></div></form><br><br></div>';
            }
            
            function addCommande() {
                var div = document.createElement('DIV');
                div.innerHTML = dynamic();
                document.getElementById("commande").appendChild(div);
            }
            
            function removeCommande(div) {
                document.getElementById("commande").removeChild(div.parentNode.parentNode.parentNode.parentNode);
            }
        </script>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>
