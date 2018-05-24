<%-- 
    Document   : nouveau
    Created on : 5 avr. 2018, 14:22:39
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
        
        <!-- Zone d'enregistrement et de modification des produits -->
        <p style="text-align: center; font-family: verdana; font-size: 2em;">Nouveaux produits</p>
        <form action="display.jsp" name="myForm" method="POST" style="position: relative; width: 60%; margin-left: 22.3%;">
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
                    <label for="prix" style="font-size: 1.3em;">Promo<strong style="color: red;"> *</strong></label>
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
                    <input type="text" class="form-control active" id=nouveauPrix" style="position: relative; width: 170%;" required="required" disabled="disabled">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
            </div>
            <div style="position: relative; margin-left: 77%;">
                <button type="submit" name="submit" class="btn btn-primary">Valider</button>
            </div>
        </form>
        
        <br><hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;"><br>
        
        <p style="text-align: center; font-family: verdana; font-size: 1.7em;">Rechercher un produit à modifier ou supprimer. Actuellement <strong>0</strong> articles en stock.</p>
        <br>
        
        <!-- Zone de recherche de produit -->
        <form style="position: relative; width: 30%; margin-left: 30%;">
            <input type="text" class="form-control" id="rechercheProduit" placeholder="Entrez le nom du produit à rechercher" required="required">
            <button type="submit" class="btn btn-primary" style="position: relative; margin-left: 110%; margin-top: -14%;">Rechercher</button>
        </form>
        <br>
        <form action="display.jsp" name="myForm" method="POST" style="position: relative; width: 60%; margin-left: 22.3%;">
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
                    <label for="prix" style="font-size: 1.3em;">Promo<strong style="color: red;"> *</strong></label>
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
                    <input type="text" class="form-control active" id=nouveauPrix" style="position: relative; width: 170%;" required="required" disabled="disabled">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
            </div>
            <div style="position: relative; margin-left: 57%;">
                <button type="submit" name="modifier" class="btn btn-primary">Modifier</button>
                <button name="supprimer" class="btn btn-primary">Supprimer</button>
            </div>
        </form>
        <br>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier bodyjsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>