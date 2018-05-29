<%-- 
    Document   : commande
    Created on : 6 avr. 2018, 13:58:02
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
        <p style="text-align: center; font-family: verdana; font-size: 2em;">Ma commande</p>
        <form action="display.jsp" name="myForm" method="POST" style="position: relative; width: 60%; margin-left: 22.3%;">
            <div class="card-deck">
                <div class="form-group" style="position: relative; margin-right: 28.5%;">
                    <label for="pays" style="font-size: 1.3em;">Pays<strong style="color: red;"> *</strong></label>
                    <select name="selectPays" class="custom-select active" id="inputPays" style="position: relative; width: 198.6%;" required="required">
                        <option selected value="Cote-d-Ivoire">Côte-d'Ivoire</option>
                        <option value="Ghana">Ghana</option>
                        <option value="Togo">Togo</option>
                        <option value="France">France</option>
                        <option value="...">...</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="entreprise" style="font-size: 1.3em;">Nom de l'entreprise</label>
                    <input type="text" class="form-control active" id="inputEmtreprise" style="position: relative; width: 171%;">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
            </div>
            <div class="card-deck">
                <div class="form-group" style="position: relative; margin-right: 25%;">
                    <label for="prenoms" style="font-size: 1.3em;">Prénoms<strong style="color: red;"> *</strong></label>
                    <input type="text" class="form-control active" id="inputPrenoms" style="position: relative; width: 170%;" required="required">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="form-group">
                    <label for="noms" style="font-size: 1.3em;">Noms<strong style="color: red;"> *</strong></label>
                    <input type="text" class="form-control active" id="inputNoms" style="position: relative; width: 170%;" required="required">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
            </div>
            <div class="card-deck">
                <div class="form-group" style="position: relative; margin-right: 25%;">
                    <label for="adresse" style="font-size: 1.3em;">Adresse<strong style="color: red;"> *</strong></label>
                    <input type="text" class="form-control active" id="inputAdresse1" placeholder="Adresse" style="position: relative; width: 170%;" required="required">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="form-group">
                    <label for="adresse" style="font-size: 1.3em;">Adresse (optionnel)</label>
                    <input type="text" class="form-control active" id="inputAdresse2" placeholder="Appartement, bureau, etc (Optionnel)" style="position: relative; width: 170%;">
                </div>
            </div>
            <div class="card-deck">
                <div class="form-group" style="position: relative; margin-right: 25%;">
                    <label for="postal" style="font-size: 1.3em;">Code postal</label>
                    <input type="text" class="form-control active" id="inputPostal" placeholder="Code postal" style="position: relative; width: 170%;">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="form-group">
                    <label for="ville" style="font-size: 1.3em;">Ville<strong style="color: red;"> *</strong></label>
                    <input type="text" class="form-control active" id="inputVille" placeholder="Ville" style="position: relative; width: 170%;" required="required">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
            </div>
            <div class="card-deck">
                <div class="form-group" style="position: relative; margin-right: 25%;">
                    <label for="adresseEmail" style="font-size: 1.3em;">Adresse email<strong style="color: red;"> *</strong></label>
                    <input type="email" class="form-control active" id="inputEmail" style="position: relative; width: 170%;" required="required">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="form-group">
                    <label for="teleplhone" style="font-size: 1.3em;">Téléphone<strong style="color: red;"> *</strong></label>
                    <input type="text" class="form-control active" id="inputTelephone" style="position: relative; width: 170%;" required="required">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
            </div>
            <button type="submit" value="submit" name="submit" class="btn btn-primary">Submit</button>
          </form>
        <br><br>
        <table class="table" style="position: relative; width: 63%; margin-left: 18.7%;">
            <thead>
                <tr class="table-active">
                    <th scope="col" style="font-size: 1.5em;">Produit</th>
                    <th scope="col" style="font-size: 1.5em;">Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="font-size: 1.3em;">Nom du produit - ses caractéristiques (xQuantité)</td>
                    <td style="font-size: 1.3em;">€0,00</td>
                </tr>
                <tr>
                    <td style="font-size: 1.3em;">Nom du produit - ses caractéristiques (xQuantité)</td>
                    <td style="font-size: 1.3em;">€0,00</td>
                </tr>
                <tr class="table-active">
                    <td style="font-size: 1.5em;">Sous-total</td>
                    <td style="font-size: 1.5em;">€0,00</td>
                </tr>
                <tr>
                    <td style="font-size: 1.5em;">Livraison</td>
                    <td style="font-size: 1.5em;">€0,00</td>
                </tr>
                <tr>
                    <td style="font-size: 1.5em;">Total</td>
                    <td style="font-size: 1.5em;">€0,00</td>
                </tr>
                <tr>
                    <td style="font-size: 1.3em;">
                        <div class="custom-control custom-radio">
                            <input class="custom-control-input" type="radio" name="paiement" id="checkBancaire" value="bancaire">
                            <label class="custom-control-label" for="checkBancaire">
                                Virement bancaire
                            </label>
                          </div>
                          <div class="custom-control custom-radio">
                            <input class="custom-control-input" type="radio" name="paiement" id="checkEspece" value="espece" checked>
                            <label class="custom-control-label" for="checkEspece">
                              Paiement en espèce
                            </label>
                          </div>
                          <div class="custom-control custom-radio">
                            <input class="custom-control-input" type="radio" name="paiement" id="checkCheque" value="cheque">
                            <label class="custom-control-label" for="checkCheque">
                              Paiement par chèque
                            </label>
                          </div>
                    </td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        <hr style="position: relative; width: 63%; margin-left: 18.7%;">
        <a class="btn btn-primary btn-lg" href="propos.jsp" role="button" style="position: relative; margin-left: 65%;">Commander</a>
        <br><br>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>