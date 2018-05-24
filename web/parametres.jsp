<%-- 
    Document   : parametre
    Created on : 5 avr. 2018, 14:23:10
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
        
        <p style="text-align: center; font-family: verdana; font-size: 2em;">Nos informations</p>
        <form style="position: relative; width: 60%; margin-left: 22.4%;">
            <div class="card-deck">
                <div class="form-group" style="position: relative; margin-right: 28%; width: 43%;">
                    <label for="pays" style="font-size: 1.3em;">Pays<strong style="color: red;"> *</strong></label>
                    <select class="custom-select" id="inputPays">
                        <option selected>Côte-d'Ivoire</option>
                        <option value="1">Ghana</option>
                        <option value="2">Togo</option>
                        <option value="3">France</option>
                        <option value="4">...</option>
                    </select>
                </div>
                <div class="form-group" style="position: relative; margin-left: -20%; width: 43%;">
                    <label for="ville" style="font-size: 1.3em;">Ville<strong style="color: red;"> *</strong></label>
                    <select class="custom-select" id="inputVille">
                        <option selected>Abidjan</option>
                        <option value="1">Yamoussoukro</option>
                        <option value="2">Paris</option>
                        <option value="3">Londres</option>
                        <option value="4">...</option>
                    </select>
                </div>
            </div>
            <div class="card-deck">
                <div class="form-group" style="position: relative; width: 43%;">
                    <label for="entreprise" style="font-size: 1.3em;">Noms de l'entreprise<strong style="color: red;"> *</strong></label>
                    <input type="text" class="form-control" id="inputEntreprise" required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="form-group" style="position: relative; margin-left: 8%; width: 43%;">
                    <label for="postal" style="font-size: 1.3em;">Code postal</label>
                    <input type="text" class="form-control" id="inputPostal" placeholder="Code postal">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
            </div>
            <div class="card-deck">
                <div class="form-group" style="position: relative; width: 43%;">
                    <label for="adresse" style="font-size: 1.3em;">Adresse<strong style="color: red;"> *</strong></label>
                    <input type="text" class="form-control" id="inputAdresse1" placeholder="Adresse" required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="form-group" style="position: relative; margin-left: 8%; width: 43%;">
                    <label for="web" style="font-size: 1.3em;">Site web</label>
                    <input type="text" class="form-control" id="inputWeb" placeholder="ex: www.monsite.com" >
                </div>
            </div>
            <div class="card-deck">
                <div class="form-group" style="position: relative; width: 43%;">
                    <label for="adresseEmail" style="font-size: 1.3em;">Adresse email<strong style="color: red;"> *</strong></label>
                    <input type="email" class="form-control" id="inputEmail" placeholder="ex: monsite@gmail.com" required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="form-group" style="position: relative; margin-left: 8%; width: 43%;">
                    <label for="teleplhone" style="font-size: 1.3em;">Téléphone<strong style="color: red;"> *</strong></label>
                    <input type="text" class="form-control" id="inputTelephone"  required>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Valider</button>
        </form>
        <br><hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;"><br>
        <table class="table" style="position: relative; width: 96%; margin-left: 2%;">
            <thead>
                <tr class="table-active">
                    <th scope="col" style="font-size: 1.12em;"></th>
                    <th scope="col" style="font-size: 1.12em;">Noms</th>
                    <th scope="col" style="font-size: 1.12em;">Prénoms</th>
                    <th scope="col" style="font-size: 1.12em;">Adresse email</th>
                    <th scope="col" style="font-size: 1.12em;">Droit au service achat</th>
                    <th scope="col" style="font-size: 1.12em;">Droit à l'ajout</th>
                    <th scope="col" style="font-size: 1.12em;">Droit au service comptable</th>
                    <th scope="col" style="font-size: 1.12em;">Droit au service de vente</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <a style="color: red;">
                            <i class="fa fa-times"></i>
                        </a>
                    </td>
                    <td>Nom du personnel</td>  
                    <td>Prénom du personnel</td>
                    <td>Adresse du personnel</td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit1" id="checkAchat" value="achat">
                            <label class="custom-control-label" for="checkAchat">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit1" id="checkAjout" value="ajout" checked>
                            <label class="custom-control-label" for="checkAjout">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit1" id="checkComptable" value="comptable">
                            <label class="custom-control-label" for="checkComptable">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit1" id="checkVente" value="vente">
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
                    <td>Nom du personnel</td>  
                    <td>Prénom du personnel</td>
                    <td>Adresse du personnel</td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit2" id="checkAchat1" value="achat">
                            <label class="custom-control-label" for="checkAchat1">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit2" id="checkAjout1" value="ajout" checked>
                            <label class="custom-control-label" for="checkAjout1">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit2" id="checkComptable1" value="comptable">
                            <label class="custom-control-label" for="checkComptable1">
                                Oui
                            </label>
                        </div>
                    </td>
                    <td>
                        <div class="custom-control custom-radio" style="text-align: center;">
                            <input class="custom-control-input" type="radio" name="droit2" id="checkVente1" value="vente">
                            <label class="custom-control-label" for="checkVente1">
                                Oui
                            </label>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="table" style="position: relative; width: 96%; margin-left: 2%; margin-right: 2%;">
            <thead>
                <tr class="table-active">
                    <th scope="col"><a href="produits.jsp">
                            <i class="fa fa-plus fa-2x"></i>
                        </a></th>
                    <th scope="col" style="font-size: 1.3em;">Ajouter un nouvel personnel</th>
                </tr>
            </thead>
        </table>
        <br><hr style="position: relative; width: 96%; height: 3px; background-color: lightslategrey; margin-left: 2%;"><br>
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
    </body>
    
</html>