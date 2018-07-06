<%-- 
    Document   : comptabilite
    Created on : 5 avr. 2018, 14:22:53
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
        <form style="position: relative; width: 60%; margin-left: 21%;" onsubmit="return validateCompte();" id="compte" name="compte" method="post" action="modificationComptabilite">
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
        <form style="position: relative; width: 60%; margin-left: 21%;" onsubmit="return validateUser();" id="utilisateur" name="utilisateur" method="post" action="comptabiliteModification">
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
                <button type="submit" class="btn btn-primary" id="modifierUSer" name="modifierUSer" style="margin-left: 67%;">Modifier mes informations</button>
            </form>
        </c:forEach>
        
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
        
        <!-- Importation du fichier footer.jsp -->
        <jsp:include page="footer.jsp"></jsp:include>
        
        <!-- Importation du fichier body.jsp -->
        <jsp:include page="body.jsp"></jsp:include>
        
    </body>
    
</html>