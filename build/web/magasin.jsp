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
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        
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
        <form style="position: relative; width: 60%; margin-left: 21%;" onsubmit="return validateCompte();" id="compte" name="compte" method="post" action="modificationMagasin">
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
            <form style="position: relative; width: 60%; margin-left: 21%;" onsubmit="return validateUser();" id="utilisateur" name="utilisateur" method="post" action="magasinModification">
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
        <div class="card-deck" style="position: relative; text-align: center; width: 95%; margin-left: 2.8%;">
            <a class="btn btn-default" id="com" name="com" data-toggle="modal" data-target="#addCategorie" role="button" style="position: relative; width: 19%; font-size: 1.3em;">
                Enregistrer <br> une nouvelle catégorie
            </a>
            <a class="btn btn-default" id="com" name="com" data-toggle="modal" data-target="#addProduit"  role="button" style="position: relative; width: 19%; font-size: 1.3em;">
                Enregistrer <br> un nouveau produit
            </a>
            <a class="btn btn-default" id="liv" name="liv" onclick="return updateRemoveNouveuAdd();" role="button" style="position: relative; width: 19%; font-size: 1.3em;">
                Modifier/ <br> Supprimer <br> un produit
            </a>
            <a class="btn btn-default" id="liv" name="liv" onclick="return updateRemoveCategorieAdd();" role="button" style="position: relative; width: 19%; font-size: 1.3em;">
                Modifier/ <br> Supprimer <br> une catégorie
            </a>
            <a class="btn btn-default" id="liste" name="liste" role="button" style="position: relative; width: 19%; font-size: 1.3em;">
                Voir les différents <br> bons
            </a>
        </div>
        
<div class="modal fade" id="addCategorie" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ajouter une nouvelle catégorie</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <form onsubmit="return validateCategorie();" id="categories" name="categories" method="post" action="insertionCategorie">
      <div class="modal-body">
        
          <div class="form-group">
            <label for="categorie" class="col-form-label">Nom de la catégorie<strong style="color: red;"> *</strong></label>
            <input type="text" class="form-control" id="categorie" name="categorie" required="required">
            <div class="valid-feedback">Looks good!</div>
          </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
        <button type="submit" id="enregistrerCategorie" name="enregistrerCategorie" class="btn btn-primary">Enregistrer</button>
      </div>
        </form>
    </div>
  </div>
</div>
        <div class="modal fade" id="addProduit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ajouter un nouveau produit</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <sql:query dataSource="${lecture}" var="categories">
                SELECT * FROM categorie;
            </sql:query>
        <form onsubmit="return validateProduit();" id="produits" name="produits" method="post" action="insertionProduit">
      <div class="modal-body">
        
          
          <div class="form-group">
            <label for="categorieProduit" class="col-form-label">Catégorie<strong style="color: red;"> *</strong></label>
                                            <select name="categorieProduit" class="custom-select active" id="categorieProduit" required="required">
                                                <option disabled="disabled" selected="selected" value="">Choix de la Catégorie</option>
                                                <c:forEach var="categorie" begin="0" items="${categories.rows}">
                                                    <option value="${categorie.nom}"><c:out value="${categorie.nom}"/></option>
                                                </c:forEach>
                                            </select>
            <div class="valid-feedback">Looks good!</div>
          </div>
          <div class="form-group">
            <label for="nomProduit" class="col-form-label">Nom du produit<strong style="color: red;"> *</strong></label>
            <input type="text" class="form-control active" id="nomProduit" name="nomProduit" required="required">
                                            <div class="valid-feedback">Looks good!</div>
          </div>
          <div class="form-group">
            <label for="caracteristiquesProduit" class="col-form-label">Caractéristiques du produit<strong style="color: red;"> *</strong></label>
            <textarea class="form-control active" id="caracteristiquesProduit" name="caracteristiquesProduit" rows="7" required="required" placeholder="ex: Couleur: verte;"></textarea>
                                            <div class="valid-feedback">Looks good!</div>
          </div>
          <div class="form-group">
            <label for="quantiteProduit" class="col-form-label">Quantité<strong style="color: red;"> *</strong></label>
            <input type="text" class="form-control active" id="quantiteProduit" name="quantiteProduit" required="required">
                                            <div class="valid-feedback">Looks good!</div>
          </div>
          <div class="form-group">
            <label for="prixProduit" class="col-form-label">Prix<strong style="color: red;"> *</strong></label>
            <input type="text" class="form-control active" id="prixProduit" name="prixProduit" required="required">
                                            <div class="valid-feedback">Looks good!</div>
          </div>
          
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
        <button type="submit" id="enregistrerProduit" name="enregistrerProduit" class="btn btn-primary">Enregistrer</button>
      </div>
        </form>
    </div>
  </div>
</div>
        <br><br>
        <div id="nouveau" name="nouveau"></div>
        
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
            function validateCategorie() {
                alert("Enregistrement effectué !!!");
            }
        </script>
        
        <script>
            function validateProduit() {
                alert("Enregistrement effectué !!!");
            }
        </script>
        
        <script>
            function dynamicUpdateRemoveCategorie() {
                return '<div>
                         <hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;">
                            <br>
                            <p style="text-align: center; font-family: verdana; font-size: 2em; color: whitesmoke;">Nouvelle catégorie</p>
                            <form action="" name="myForm" method="POST" style="position: relative; width: 60%; margin-left: 22.3%;">
                                <div style="background-color: whitesmoke; width: 100%; padding-left: 6%;">
                                    <div class="card-deck">
                                        <div class="form-group" style="position: relative; margin-right: 14%;">
                                            <label for="categorie" style="font-size: 1.3em;">Catégorie<strong style="color: red;"> *</strong></label>
                                            <select name="selectCategorie" class="custom-select active" id="categorie" style="position: relative; width: 118.6%;" required="required">
                                                <option disabled="disabled" selected="selected" value="">Choix de la Catégorie</option>
                                                <option value="alimentaire">Alimentaire</option>
                                                <option value="vestimentaire">Vestimentaire</option>
                                                <option value="autre">Autre</option>
                                                <option value="...">...</option>
                                            </select>
                                        </div>
                                        <div class="form-group" >
                                            <label for="produit" style="font-size: 1.3em;">Nouveau nom<strong style="color: red;"> *</strong></label>
                                            <input type="text" class="form-control active" id="produit" style="position: relative; width: 171%;">
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 46%;">
                                    <button name="modifier" id="modifier" type="submit" class="btn btn-primary">Modifier</button>
                                    <button name="supprimer" id="supprimer" class="btn btn-primary">Supprimer</button>
                                    <button name="annuler" id="annuler" onclick="return updateRemoveCategorieRemove(this);" class="btn btn-primary">Annuler</button>
                                </div>
                                <br><br>
                            </form>
                        </div>';
            }
            
            function updateRemoveCategorieAdd() {
                var div = document.createElement('DIV');
                div.innerHTML = dynamicUpdateRemoveCategorie();
                document.getElementById("nouveau").appendChild(div);
            }
            
            function updateRemoveCategorieRemove(div) {
                document.getElementById("nouveau").removeChild(div.parentNode.parentNode.parentNode.parentNode);
            }
        </script>
        
        <script>
            function dynamicUpdateRemoveProduit() {
                return'<div>
                         <hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;">
                            <br>
                            <form style="position: relative; width: 30%; margin-left: 30%;">
                                <input type="text" class="form-control" id="rechercheProduit" placeholder="Entrez le nom du produit à rechercher" required="required">
                                <button type="submit" class="btn btn-primary" style="position: relative; margin-left: 110%; margin-top: -14%;">Rechercher</button>
                            </form>
                            <br>
                            <form action="" name="myForm" method="POST" style="position: relative; width: 60%; margin-left: 22.3%;">
                                <div style="background-color: whitesmoke; width: 100%; padding-left: 6%;">
                                    <div class="card-deck">
                                        <div class="form-group" style="position: relative; margin-right: 14%;">
                                            <label for="categorie" style="font-size: 1.3em;">Catégorie<strong style="color: red;"> *</strong></label>
                                            <select name="selectCategorie" class="custom-select active" id="categorie" style="position: relative; width: 118.6%;" required="required">
                                                <option disabled="disabled" selected="selected" value="">Choix de la Catégorie</option>
                                                <option value="alimentaire">Alimentaire</option>
                                                <option value="vestimentaire">Vestimentaire</option>
                                                <option value="autre">Autre</option>
                                                <option value="...">...</option>
                                            </select>
                                        </div>
                                        <div class="form-group" >
                                            <label for="produit" style="font-size: 1.3em;">Nom du produit<strong style="color: red;"> *</strong></label>
                                            <input type="text" class="form-control active" id="produit" style="position: relative; width: 171%;">
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-deck">
                                        <div class="form-group" style="position: relative; margin-right: 25%;">
                                            <label for="caracteristiques" style="font-size: 1.3em;">Caractéristiques du produit<strong style="color: red;"> *</strong></label>
                                            <textarea class="form-control active" id="caracteristiques" rows="7" required="required" style="position: relative; width: 136%;" placeholder="ex: Couleur: verte;"></textarea>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="form-group" style="position: relative; margin-left: -6.3%;">
                                            <label for="quantite" style="font-size: 1.3em;">Quantité<strong style="color: red;"> *</strong></label>
                                            <input type="int" class="form-control active" id="quantite" style="position: relative; width: 170%;" required="required">
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-deck">
                                        <div class="form-group" style="position: relative; margin-right: 25%;">
                                            <label for="prix" style="font-size: 1.3em;">Prix<strong style="color: red;"> *</strong></label>
                                            <input type="text" class="form-control active" id="prix" style="position: relative; width: 170%;" required="required">
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="prix" style="font-size: 1.3em;">Promo</label>
                                            <br>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" id="oui" name="promo" class="custom-control-input">
                                                <label class="custom-control-label" for="oui">Oui</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" id="non" name="promo" class="custom-control-input" checked="checked">
                                                <label class="custom-control-label" for="non">Non</label>
                                            </div>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-deck">
                                        <div class="form-group" style="position: relative; margin-right: 25%;">
                                            <label for="nouveauPrix" style="font-size: 1.3em;">Nouveau prix<strong style="color: red;"> *</strong></label>
                                            <input type="text" class="form-control active" id=nouveauPrix" style="position: relative; width: 170%;" required="required">
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div style="margin-left: 47%;">
                                    <button name="modifier" id="modifier" type="submit" class="btn btn-primary">Modifier</button>
                                    <button name="supprimer" id="supprimer" class="btn btn-primary">Supprimer</button>
                                    <button name="annuler" id="annuler" onclick="return removeUpdateRemoveProduit(this);" class="btn btn-primary">Annuler</button>
                                </div>
                                <br><br>
                            </form></div>';
            }
            
            function updateRemoveNouveuAdd() {
                var div = document.createElement('DIV');
                div.innerHTML = dynamicUpdateRemoveProduit();
                document.getElementById("nouveau").appendChild(div);
            }
            
            function removeUpdateRemoveProduit(div) {
                document.getElementById("nouveau").removeChild(div.parentNode.parentNode.parentNode.parentNode);
            }
        </script>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>