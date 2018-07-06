<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>

<!-- Importation des fichiers css de materialize -->
<!-- Début -->
<link rel="stylesheet" href="MDB Free/css/mdb.css" />
<link href="MDB Free/css/bootstrap.min.css" rel="stylesheet">
<link href="MDB Free/css/bootstrap.css" rel="stylesheet">
<link href="MDB Free/css/mdb.min.css" rel="stylesheet">
<link href="MDB Free/css/style.css" rel="stylesheet">
<!-- Fin -->

<script defer src="fontawesome-free-5.0.9/svg-with-js/js/fontawesome-all.js"></script>

<sql:setDataSource var = "lecture" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/boutique" user = "root"  password = ""/>
        <sql:query dataSource="${lecture}" var="entreprises">
                SELECT * FROM entreprise;
            </sql:query>
<!-- Pieds de page -->
<!-- Début -->
<footer class="jumbotron" style="background-color: lightblue; text-align: center;">
    <h1 class="display-4">Disponible 7j/7 24h/24</h1>
    <p class="lead">Nous vous proposons des produits de toutes sorte. Venez et repartez avec le sourire !!!</p>
    <hr class="my-4">
    <div class="card-deck" style="position: relative; margin-left: 27%;">
        <div style="text-align: left;">
            <h3>Nous connaître</h3>
            <ul style="position: relative; right: 30%;">
                <ol><a class="btn btn-default" href="#">A propos de nous</a></ol>
                <ol><a class="btn btn-default" href="#">Nos fournisseurs</a></ol> 
            </ul>
        </div>
        <div style="text-align: left;">
            <h3>Nos coordonnées</h3>
            <ul style="position: relative; right: 20%;">
                <c:forEach var="entreprise" begin="0" items="${entreprises.rows}">
                    <ol><c:out value="${entreprise.nom}"/></ol>
                    <ol>
                        <c:out value="${entreprise.pays}"/>
                        ,
                        <c:out value="${entreprise.ville}"/>
                    </ol>
                    <ol>
                        <c:out value="${entreprise.adresse}"/>
                        ,
                        <c:out value="${entreprise.postal}"/>
                    </ol>
                    <ol>Tel: <c:out value="${entreprise.telephone}"/></ol>
                    <ol>Email: <c:out value="${entreprise.email}"/></ol>
                    <ol>Site web: <c:out value="${entreprise.site}"/></ol>
                </c:forEach>
                
            </ul>
        </div>
    </div>
    Copyright © 2018 – confortshop.com – Tous droits réservés
</footer>
<!-- Fin -->

<!-- Importation du fichier body.jsp -->
<jsp:include page="body.jsp"></jsp:include>