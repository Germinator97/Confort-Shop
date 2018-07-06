<%-- 
    Document   : achats
    Created on : 5 avr. 2018, 14:22:14
    Author     : germinator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@page session="true" %>

<%
    HttpSession sesion = request.getSession();
%>

<!DOCTYPE html>

<html>
    
    <head>
        <!-- Importation du fichier head.jsp -->
        <jsp:include page="head.jsp"></jsp:include>
        
    </head>
    
    <body style="font-family: 'Open Sans', sans-serif; height: 100vh; background: url('images/4.jpg') 50% fixed; background-size: cover;">
        
        <!-- Importation du fichier header.jsp -->
        <jsp:include page="header.jsp"></jsp:include>
        
        <sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/boutique" user = "root"  password = ""/>
        
        <br><br><br><br>
        
        <%
                int id = 0;
                if (sesion.getAttribute("id")== null) {
                    id = (Integer)request.getAttribute("id");
                    pageContext.setAttribute("id", id);
                }
        %>
            <sql:query dataSource="${lecture}" var="comptes">
                SELECT * FROM compte WHERE compte.id=${id};
            </sql:query>
        
        <p style="text-align: center; font-family: verdana; font-size: 2em; color: whitesmoke;">Mes informations</p>
        <form style="position: relative; width: 60%; margin-left: 21%;" onsubmit="return validateCompte();" id="compte" name="compte" method="post" action="modificationVente">
            <div style="background-color: whitesmoke; width: 100%; padding-left: 6%;">
                <div class="card-deck">
                    <div class="form-group" style="position: relative; width: 26%;">
                        <label for="username" style="font-size: 1.3em;">Nom d'utilisateur<strong style="color: red;"> *</strong></label>
                        <c:forEach var="compte" begin="0" items="${comptes.rows}">
                            <input type="text" class="form-control" id="username" name="username" placeholder="${compte.username}" required>
                        </c:forEach>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="form-group" style="position: relative; margin-left: 4%; width: 30%;">
                        <label for="password" style="font-size: 1.3em;">Mot de passe<strong style="color: red;"> *</strong></label>
                        <input type="text" class="form-control" id="password" name="password" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                    <div class="form-group" style="position: relative; margin-left: 4%; width: 30%;">
                        <label for="confirm" style="font-size: 1.3em;">Confirmer mot de passe<strong style="color: red;"> *</strong></label>
                        <input type="text" class="form-control" id="confirm" name="confirm" required>
                        <div class="valid-feedback">
                            Looks good!
                        </div>
                    </div>
                </div>
                <input id="identifiant" name="identifiant" type="text" hidden="hidden" value="${id}">
            </div>
            <button id="modifierCompte" name="modifierCompte" type="submit" class="btn btn-primary" style="margin-left: 75%;">Modifier compte</button>
        </form>
        <br>
        <c:forEach var="compte" begin="0" items="${comptes.rows}">
        <form style="position: relative; width: 60%; margin-left: 21%;" onsubmit="return validateUser();" id="utilisateur" name="utilisateur" method="post" action="venteModification">
                <div style="background-color: whitesmoke; width: 100%; padding-left: 6%;">
                    <div class="card-deck">
                        <div class="form-group" style="position: relative; width: 43%;">
                            <label for="nom" style="font-size: 1.3em;">Noms<strong style="color: red;"> *</strong></label>
                            <input type="text" class="form-control" id="nom" name="nom" placeholder="${compte.nom}" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="form-group" style="position: relative; margin-left: 8%; width: 43%;">
                            <label for="prenom" style="font-size: 1.3em;">Prénoms<strong style="color: red;"> *</strong></label>
                            <input type="text" class="form-control" id="prenom" name="prenom" placeholder="${compte.prenom}" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                    </div>
                    <div class="card-deck">
                        <div class="form-group" style="position: relative; width: 43%;">
                            <label for="mail" style="font-size: 1.3em;">Email<strong style="color: red;"> *</strong></label>
                            <input type="mail" class="form-control" id="mail" name="mail" placeholder="${compte.email}" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="form-group" style="position: relative; margin-left: 8%; width: 43%;">
                            <label for="telephone" style="font-size: 1.3em;">Telephone<strong style="color: red;"> *</strong></label>
                            <input type="telephone" class="form-control" id="telephone" name="telephone" placeholder="${compte.telephone}" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                    </div>
                    <input id="identifiant" name="identifiant" type="text" hidden="hidden" value="${id}">
                </div>
                <button type="submit" class="btn btn-primary" id="modifierUser" name="modifierUser" style="margin-left: 67%;">Modifier mes informations</button>
            </form>
        </c:forEach>
        <br>
        <hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;"><br>
        <p style="text-align: center; font-family: verdana; font-size: 2em; color: whitesmoke;">Mes services</p>
        <div class="card-deck" style="position: relative; text-align: center; width: 80%; margin-left: 20%;">
            <a class="btn btn-default" id="com" name="com" onclick="return commandeAdd();" role="button" style="position: relative; width: 25%; font-size: 1.3em;">Etabir un bon de commande
            </a>
            <a class="btn btn-default" id="liv" name="liv" role="button" style="position: relative; width: 25%; font-size: 1.3em;">Etablir un bon de livraison
            </a>
            <a class="btn btn-default" id="liste" name="liste" role="button" style="position: relative; width: 25%; font-size: 1.3em;">Voir les différents bons
            </a>
        </div>
        <br><br>
        <div id="commande" name="commande"></div>
        
        <script>
                
                function validateUser() {
                    alert("Vos informations ont été modifiées !!!");
                }
            
            
                function validateCompte() {
                
                var compte = document.getElementById("compte");
                var password = document.getElementById("password").value;
                var confirm = document.getElementById("confirm").value;
                var ilegal = /[\W_]/;
                
                if (confirm === password) {
                    if (ilegal.test(password)) {
                        alert("Votre mot de passe contient des caractères non autorisés !!!");
                        document.compte.password.focus();
                        return false;
                    }
                    else {
                        alert("Modification du compte éffectuée !!!");
                    }
                }
                
                else {
                    alert("Votre mot de passe ne correspond pas. Veuillez le resaisir !!!");
                    document.compte.confirm.focus();
                    return false;
                }
                
            }
            </script>
        
        <script>
            function commandeDynamic() {
                return '<div>\n\
                            <hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;">\n\
                            <br>\n\
                            <p style="text-align: center; font-family: verdana; font-size: 2em; color: whitesmoke;">Mon panier</p>\n\
                            <table class="table" style="position: relative; width: 80%; margin-left: 10%; background-color: whitesmoke;">\n\
                                <thead>\n\
                                    <tr class="table-active">\n\
                                        <th scope="col" style="font-size: 1.5em;"></th>\n\
                                        <th scope="col" style="font-size: 1.5em;">Produit</th>\n\
                                        <th scope="col" style="font-size: 1.5em;">Prix</th>\n\
                                        <th scope="col" style="font-size: 1.5em;">Quantité</th>\n\
                                        <th scope="col" style="font-size: 1.5em;">Total</th>\n\
                                    </tr>\n\
                                </thead>\n\
                                <tbody>\n\
                                    <tr>\n\
                                        <td><br><a style="color: red;"><i class="fa fa-times"></i></a></td>\n\
                                        <td>\n\
                                            <div class="card-deck">\n\
                                                <div style="width: 15%; height: 15%; margin-right: 5%;">\n\
                                                    <img src="images/customer-service.svg">\n\
                                                </div>\n\
                                                <div>\n\
                                                    <h5 style="font-size: 1.3em;">Nom du produit</h5>\n\
                                                    <p style="font-size: 1.3em;">Les caractéristiques du produit</p>\n\
                                                </div>\n\
                                            </div>\n\
                                        </td>\n\
                                        <td style="font-size: 1.3em;">€0,00</td>\n\
                                        <td>\n\
                                            <select class="custom-select" id="inputGroupSelect01" style="position: relative; width: 50%; font-size: 1.3em;">\n\
                                                <option selected>1</option>\n\
                                                <option value="1">2</option>\n\
                                                <option value="2">3</option>\n\
                                                <option value="3">4</option>\n\
                                                <option value="4">...</option>\n\
                                            </select>\n\
                                        </td>\n\
                                        <td style="font-size: 1.3em;">€0,00</td>\n\
                                    </tr>\n\
                                    <tr>\n\
                                        <td><br><a style="color: red;"><i class="fa fa-times"></i></a></td>\n\
                                        <td>\n\
                                            <div class="card-deck">\n\
                                                <div style="width: 15%; height: 15%; margin-right: 5%;">\n\
                                                    <img src="images/customer-service.svg">\n\
                                                </div>\n\
                                                <div>\n\
                                                    <h5 style="font-size: 1.3em;">Nom du produit</h5>\n\
                                                    <p style="font-size: 1.3em;">Les caractéristiques du produit</p>\n\
                                                </div>\n\
                                            </div>\n\
                                        </td>\n\
                                        <td style="font-size: 1.3em;">€0,00</td>\n\
                                        <td>\n\
                                            <select class="custom-select" id="inputGroupSelect01" style="position: relative; width: 50%; font-size: 1.3em;">\n\
                                                <option selected>1</option>\n\
                                                <option value="1">2</option>\n\
                                                <option value="2">3</option>\n\
                                                <option value="3">4</option>\n\
                                                <option value="4">...</option>\n\
                                            </select>\n\
                                        </td>\n\
                                        <td style="font-size: 1.3em;">€0,00</td>\n\
                                    </tr>\n\
                                </tbody>\n\
                            </table>\n\
                            <table class="table" style="position: relative; width: 80%; margin-left: 10%; background-color: whitesmoke;">\n\
                                <thead>\n\
                                    <tr class="table-active">\n\
                                        <th scope="col"><a href="produits.jsp"><i class="fa fa-plus fa-2x"></i></a></th>\n\
                                        <th scope="col" style="font-size: 1.3em;">Ajouter un nouveau produit a votre panier</th>\n\
                                    </tr>\n\
                                </thead>\n\
                            </table>\n\
                            <div style="position: relative; width: 30%; margin-left: 60%; background-color: whitesmoke;">\n\
                                <table class="table">\n\
                                    <thead>\n\
                                        <tr class="table-active">\n\
                                            <th scope="row" style="font-size: 2em;">Total panier</th>\n\
                                            <th></th>\n\
                                        </tr>\n\
                                    </thead>\n\
                                    <tbody>\n\
                                        <tr>\n\
                                            <th scope="row" style="font-size: 1.3em;">Sous-total</th>\n\
                                            <td style="font-size: 1.3em;">€0,00</td>\n\
                                        </tr>\n\
                                        <tr>\n\
                                            <th scope="row" style="font-size: 1.3em;">Livraison</th>\n\
                                            <td style="font-size: 1.3em;">€0,00</td>\n\
                                        </tr>\n\
                                        <tr class="table-active">\n\
                                            <th scope="row" style="font-size: 2em;">Total</th>\n\
                                            <td style="font-size: 2em;">€0,00</td>\n\
                                        </tr>\n\
                                    </tbody>\n\
                                </table>\n\
                            </div>\n\
                            <div style="margin-left: 61%;">\n\
                                <button type="submit" name="addCommande" id="addCommande" onclick="return addCommande()" class="btn btn-primary">Passer à la commander</button>\n\
                                <button name="commandeRemove" id="commandeRemove" onclick="return commandeRemove(this)" class="btn btn-primary">Annuler</button>\n\
                            </div>\n\
                            <br><br>\n\
                        </div>';
            }
            
            function commandeAdd() {
                var div = document.createElement('DIV');
                div.innerHTML = commandeDynamic();
                document.getElementById("commande").appendChild(div);
            }
            
            function commandeRemove(div) {
                document.getElementById("commande").removeChild(div.parentNode.parentNode.parentNode);
            }
        </script>
        
        <script>
            function dynamicCommande() {
                return '<div><hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;"><br><p style="text-align: center; font-family: verdana; font-size: 2em; color: whitesmoke;">Ma commande</p><form action="" name="myForm" method="POST" style="position: relative; width: 60%; margin-left: 22.3%;"><div style="width: 100%; padding-left: 6%; margin-left: -4%; background-color: whitesmoke;"><div class="card-deck"><div class="form-group" style="position: relative; margin-right: 28.5%;"><label for="pays" style="font-size: 1.3em;">Pays<strong style="color: red;"> *</strong></label><select name="selectPays" class="custom-select active" id="inputPays" style="position: relative; width: 192.6%;" required="required"><option selected value="Cote-d-Ivoire">Côte-d Ivoire</option><option value="Ghana">Ghana</option><option value="Togo">Togo</option><option value="France">France</option><option value="...">...</option></select></div><div class="form-group" style="margin-left: -0.9%;"><label for="entreprise" style="font-size: 1.3em;">Nom de l entreprise</label><input type="text" class="form-control active" id="inputEmtreprise" style="position: relative; width: 171%;"><div class="valid-feedback">Looks good!</div></div></div><div class="card-deck"><div class="form-group" style="position: relative; margin-right: 25%;"><label for="prenoms" style="font-size: 1.3em;">Prénoms<strong style="color: red;"> *</strong></label><input type="text" class="form-control active" id="inputPrenoms" style="position: relative; width: 170%;" required="required"><div class="valid-feedback">Looks good!</div></div><div class="form-group"><label for="noms" style="font-size: 1.3em;">Noms<strong style="color: red;"> *</strong></label><input type="text" class="form-control active" id="inputNoms" style="position: relative; width: 170%;" required="required"><div class="valid-feedback">Looks good!</div></div></div><div class="card-deck"><div class="form-group" style="position: relative; margin-right: 25%;"><label for="adresse" style="font-size: 1.3em;">Adresse<strong style="color: red;"> *</strong></label><input type="text" class="form-control active" id="inputAdresse1" placeholder="Adresse" style="position: relative; width: 170%;" required="required"><div class="valid-feedback">Looks good!</div></div><div class="form-group"><label for="adresse" style="font-size: 1.3em;">Adresse (optionnel)</label><input type="text" class="form-control active" id="inputAdresse2" placeholder="Appartement, bureau, etc (Optionnel)" style="position: relative; width: 170%;"></div></div><div class="card-deck"><div class="form-group" style="position: relative; margin-right: 25%;"><label for="postal" style="font-size: 1.3em;">Code postal</label><input type="text" class="form-control active" id="inputPostal" placeholder="Code postal" style="position: relative; width: 170%;"><div class="valid-feedback">Looks good!</div></div><div class="form-group"><label for="ville" style="font-size: 1.3em;">Ville<strong style="color: red;"> *</strong></label><input type="text" class="form-control active" id="inputVille" placeholder="Ville" style="position: relative; width: 170%;" required="required"><div class="valid-feedback">Looks good!</div></div></div><div class="card-deck"><div class="form-group" style="position: relative; margin-right: 25%;"><label for="adresseEmail" style="font-size: 1.3em;">Adresse email<strong style="color: red;"> *</strong></label><input type="email" class="form-control active" id="inputEmail" style="position: relative; width: 170%;" placeholder="ex: monsite@gmail.com" required="required"><div class="valid-feedback">Looks good!</div></div><div class="form-group"><label for="teleplhone" style="font-size: 1.3em;">Téléphone<strong style="color: red;"> *</strong></label><input type="text" class="form-control active" id="inputTelephone" style="position: relative; width: 170%;" required="required"><div class="valid-feedback">Looks good!</div></div></div></div><br><br><table class="table" style="margin-left: -4%; background-color: whitesmoke;""><thead><tr class="table-active"><th scope="col" style="font-size: 1.5em;">Produit</th><th scope="col" style="font-size: 1.5em;">Total</th></tr></thead><tbody><tr><td style="font-size: 1.3em;">Nom du produit - ses caractéristiques (xQuantité)</td><td style="font-size: 1.3em;">€0,00</td></tr><tr><td style="font-size: 1.3em;">Nom du produit - ses caractéristiques (xQuantité)</td><td style="font-size: 1.3em;">€0,00</td></tr><tr class="table-active"><td style="font-size: 1.5em;">Sous-total</td><td style="font-size: 1.5em;">€0,00</td></tr><tr><td style="font-size: 1.5em;">Livraison</td><td style="font-size: 1.5em;">€0,00</td></tr><tr><td style="font-size: 1.5em;">Total</td><td style="font-size: 1.5em;">€0,00</td></tr><tr><td style="font-size: 1.3em;"><div class="custom-control custom-radio"><input class="custom-control-input" type="radio" name="paiement" id="checkBancaire" value="bancaire"><label class="custom-control-label" for="checkBancaire">Virement bancaire</label></div><div class="custom-control custom-radio"><input class="custom-control-input" type="radio" name="paiement" id="checkEspece" value="espece" checked><label class="custom-control-label" for="checkEspece">Paiement en espèce</label></div><div class="custom-control custom-radio"><input class="custom-control-input" type="radio" name="paiement" id="checkCheque" value="cheque"><label class="custom-control-label" for="checkCheque">Paiement par chèque</label></div></td><td></td></tr></tbody></table><hr><div style="position: relative; margin-left: 57%;"><button type="submit" name="commander" id="commander" class="btn btn-primary">Commander</button><button name="remove" id="remove" onclick="return removeCommande(this)" class="btn btn-primary">Annuler</button></div></form><br><br></div>';
            }
            
            function addCommande() {
                var div = document.createElement('DIV');
                div.innerHTML = dynamicCommande();
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