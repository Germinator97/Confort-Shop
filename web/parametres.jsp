<%-- 
    Document   : parametre
    Created on : 5 avr. 2018, 14:23:10
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
        <form style="position: relative; width: 60%; margin-left: 21%;" onsubmit="return validateCompte();" id="compte" name="compte" method="post" action="modificationCompte">
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
            <form style="position: relative; width: 60%; margin-left: 21%;" onsubmit="return validateUser();" id="utilisateur" name="utilisateur" method="post" action="utilisateurModification">
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
            <a class="btn btn-default" data-toggle="modal" data-target="#entreprise" id="com" name="com" role="button" style="position: relative; width: 25%; font-size: 1.3em;">
                Informations sur l'entreprise
            </a>
            <a class="btn btn-default" data-toggle="modal" data-target="#utilisateurs" id="liv" name="liv" role="button" style="position: relative; width: 25%; font-size: 1.3em;">
                Enregistrer un nouvel utilisateur
            </a>
            <a class="btn btn-default" id="liste" name="liste" role="button" style="position: relative; width: 25%; font-size: 1.3em;">
                Voir les différents bons
            </a>
        </div>
<div class="modal fade" id="entreprise" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Nos informations</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <sql:query dataSource="${lecture}" var="entreprises">
                SELECT * FROM entreprise;
            </sql:query>
        <form onsubmit="return validateEntreprise();" id="informations" name="informations" method="post" action="informations">
          
            <div class="modal-body"><c:forEach var="entreprise" begin="0" items="${entreprises.rows}">
                                <div class="form-group">
                                        <label for="paysEntreprise" class="col-form-label">Pays<strong style="color: red;"> *</strong></label>
                                        <select class="custom-select" id="paysEntreprise" name="paysEntreprise" required>
                                            <option value="Pays" disabled selected>Pays</option>
                                            <option value="Côte-d Ivoire">Côte-d'Ivoire</option>
                                            <option value="Ghana">Ghana</option>
                                            <option value="Togo">Togo</option>
                                            <option value="France">France</option>
                                            <option value="Suite">...</option>
                                        </select>
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                </div>
                                <div class="form-group">
                                        <label for="villeEntreprise" class="col-form-label">Ville<strong style="color: red;"> *</strong></label>
                                        <select class="custom-select" id="villeEntreprise" name="villeEntreprise" required>
                                            <option value="Ville" disabled selected>Ville</option>
                                            <option value="Abidjan">Abidjan</option>
                                            <option value="Yamoussoukro">Yamoussoukro</option>
                                            <option value="Paris">Paris</option>
                                            <option value="Londres">Londres</option>
                                            <option value="Suite">...</option>
                                        </select>
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                </div>
                                <div class="form-group">
                                        <label for="nomEntreprise" class="col-form-label">Noms de l entreprise<strong style="color: red;"> *</strong></label>
                                        <input type="text" class="form-control" placeholder="${entreprise.nom}" id="nomEntreprise" name="nomEntreprise" required>
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                </div>
                                <div class="form-group">
                                        <label for="postalEntreprise" class="col-form-label">Code postal</label>
                                        <input type="text" class="form-control" placeholder="${entreprise.postal}" id="postalEntreprise" name="postalEntreprise" placeholder="Code postal">
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                </div>
                                <div class="form-group">
                                        <label for="adresseEntreprise" class="col-form-label">Adresse<strong style="color: red;"> *</strong></label>
                                        <input type="text" class="form-control" placeholder="${entreprise.adresse}" id="adresseEntreprise" name="adresseEntreprise" placeholder="Adresse" required>
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                </div>
                                <div class="form-group">
                                        <label for="siteEntreprise" class="col-form-label">Site web</label>
                                        <input type="text" class="form-control" placeholder="${entreprise.site}" id="siteEntreprise" name="siteEntreprise" placeholder="ex: www.monsite.com" >
                                </div>
                                <div class="form-group">
                                        <label for="mailEntreprise" class="col-form-label">Adresse email<strong style="color: red;"> *</strong></label>
                                        <input type="email" class="form-control" placeholder="${entreprise.email}" id="mailEntreprise" name="mailEntreprise" placeholder="ex: monsite@gmail.com" required>
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                </div>
                                <div class="form-group">
                                        <label for="telephoneEntreprise" class="col-form-label">Téléphone<strong style="color: red;"> *</strong></label>
                                        <input type="text" class="form-control" placeholder="${entreprise.telephone}" id="telephoneEntreprise" name="telephoneEntreprise"  required>
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                </div>
                            </c:forEach>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
        <button type="submit" id="enregistrerEntreprise" name="enregistrerEntreprise" class="btn btn-primary">Enregistrer</button>
      </div>
            </form>
    </div>
  </div>
</div>
        <div class="modal fade" id="utilisateurs" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Un nouvel personnel</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <form onsubmit="return validateUtilisateur();" id="users" name="users" method="post" action="insertionUtilisateur">
          
            <div class="modal-body">
                                <div class="form-group">
                                        <label for="nomUser" class="col-form-label">Noms<strong style="color: red;"> *</strong></label>
                                            <input type="text" class="form-control" id="nomUser" name="nomUser" required>
                                            <div class="valid-feedback">Looks good!</div>
                                </div>
                                <div class="form-group">
                                        <label for="prenomUser" class="col-form-label">Prénoms<strong style="color: red;"> *</strong></label>
                                            <input type="text" class="form-control" id="prenomUser" name="prenomUser" required>
                                            <div class="valid-feedback">Looks good!</div>
                                </div>
                                <div class="form-group">
                                        <label for="droitUser" class="col-form-label">Droit du personnel<strong style="color: red;"> *</strong></label>
                                            <select class="custom-select" id="droitUser" name="droitUser" required="required">
                                                <option value="Droit" disabled selected>Droit</option>
                                                <option value="Achat">Achat</option>
                                                <option value="Comptabilite">Comptabilité</option>
                                                <option value="Magasin">Magasin</option>
                                                <option value="Vente">Vente</option>
                                            </select>
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                </div>
                                <div class="form-group">
                                        <label for="mailUser" class="col-form-label">Adresse email<strong style="color: red;"> *</strong></label>
                                            <input type="email" class="form-control" id="mailUser" name="mailUser" placeholder="ex: monsite@gmail.com" required>
                                            <div class="valid-feedback">Looks good!</div>
                                </div>
                                <div class="form-group">
                                         <label for="telephoneUser" class="col-form-label">Telephone<strong style="color: red;"> *</strong></label>
                                            <input type="text" class="form-control" id="telephoneUser" name="telephoneUser" required>
                                            <div class="valid-feedback">Looks good!</div>
                                </div>
                                
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
        <button type="submit" id="enregistrerUser" name="enregistrerUser" class="btn btn-primary">Enregistrer</button>
      </div>
            </form>
    </div>
  </div>
</div>
        <br><hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;"><br>
        <table class="table" style="position: relative; background-color: whitesmoke; width: 96%; margin-left: 2%;">
            <thead>
                <tr class="table-active">
                    <th scope="col" style="font-size: 1.12em;"></th>
                    <th scope="col" style="font-size: 1.12em;"></th>
                    <th scope="col" style="font-size: 1.12em;">Noms</th>
                    <th scope="col" style="font-size: 1.12em;">Prénoms</th>
                    <th scope="col" style="font-size: 1.12em;">Adresse email</th>
                    <th scope="col" style="font-size: 1.12em;">Droit Achat</th>
                    <th scope="col" style="font-size: 1.12em;">Droit Magasin</th>
                    <th scope="col" style="font-size: 1.12em;">Droit Comptabilité</th>
                    <th scope="col" style="font-size: 1.12em;">Droit Vente</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <a style="color: red;">
                            <i class="fa fa-times"></i>
                        </a>
                    </td>
                    <td>
                        <a style="color: blue;">
                            <i class="fa fa-edit"></i>
                        </a>
                    </td>
                    <td>Nom du personnel</td>  
                    <td>Prénom du personnel</td>
                    <td>Adresse du personnel</td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit1" id="checkAchat" value="achat" disabled="disabled">
                            <label class="custom-control-label" for="checkAchat">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit1" id="checkAjout" value="ajout" checked disabled="disabled">
                            <label class="custom-control-label" for="checkAjout">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit1" id="checkComptable" value="comptable" disabled="disabled">
                            <label class="custom-control-label" for="checkComptable">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit1" id="checkVente" value="vente" disabled="disabled">
                            <label class="custom-control-label" for="checkVente">
                                Oui
                            </label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a style="color: red;">
                            <i class="fa fa-times"></i>
                        </a>
                    </td>
                    <td>
                        <a style="color: blue;">
                            <i class="fa fa-edit"></i>
                        </a>
                    </td>
                    <td>Nom du personnel</td>  
                    <td>Prénom du personnel</td>
                    <td>Adresse du personnel</td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit2" id="checkAchat1" value="achat" disabled="disabled">
                            <label class="custom-control-label" for="checkAchat1">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit2" id="checkAjout1" value="ajout" checked disabled="disabled">
                            <label class="custom-control-label" for="checkAjout1">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit2" id="checkComptable1" value="comptable" disabled="disabled">
                            <label class="custom-control-label" for="checkComptable1">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit2" id="checkVente1" value="vente" disabled="disabled">
                            <label class="custom-control-label" for="checkVente1">
                                Oui
                            </label>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <br>
        <div id="personnel" name="personnel">
        </div>
        
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
            function validateEntreprise() {
                
                var information = document.getElementById("informations");
                
                var paysEntreprise = document.getElementById("paysEntreprise").value;
                var villeEntreprise = document.getElementById("villeEntreprise").value;
                
                if (paysEntreprise === "Pays") {
                    alert("Veuillez sélectionner un pays pour éffectuer un enregistrement");
                    document.informations.paysEntreprise.focus();
                    return false;
                }
                if (villeEntreprise === "Ville") {
                    alert("Veuillez sélectionner une ville pour éffectuer un enregistrement");
                    document.informations.villeEntreprise.focus();
                    return false;
                }
                
                alert("Enregistrement éffectué !!!");
            }
        </script>
        
        <script>
            function validateUtilisateur() {
                
                var users = document.getElementById("users");
                
                var droitUser = document.getElementById("droitUser").value;
                
                if (droitUser === "Droit") {
                    alert("Veuillez sélectionner un droit d'utilisateur pour éffectuer un enregistrement");
                    document.users.droitUser.focus();
                    return false;
                }
                
                alert("Enregistrement éffectué !!!");
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