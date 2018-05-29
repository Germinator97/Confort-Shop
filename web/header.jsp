<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Importation des fichiers css de materialize -->
<!-- Début -->
<link rel="stylesheet" href="MDB Free/css/mdb.css" />
<link href="MDB Free/css/bootstrap.min.css" rel="stylesheet">
<link href="MDB Free/css/bootstrap.css" rel="stylesheet">
<link href="MDB Free/css/mdb.min.css" rel="stylesheet">
<link href="MDB Free/css/style.css" rel="stylesheet">
<!-- Fin -->

<script defer src="fontawesome-free-5.0.9/svg-with-js/js/fontawesome-all.js"></script>

<!-- Navbar -->
<!-- Début -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-secondary">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-brand">
        <i class="fa fa-shopping-bag fa-1x"></i>
            Confort Shop
    </div>
    <a href="panier.jsp" style="position: relative; margin-left: 21%;">
        <div class="navbar-brand">
            <strong>(0 articles)</strong>
            <i class="fa fa-cart-plus fa-1x"></i>
            Votre panier : 
        </div>
        <div class="navbar-brand" id="prix">
            €0,00
        </div>
    </a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent" style="position: relative; margin-left: 18%;">
        <ul class="navbar-nav mr-auto" style="position: relative; font-size: 1.3em;">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Acceuil <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="produits.jsp">Produits</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="loginAdministration.jsp">Paramètres</a>
            </li>
            </ul>
    </div>
</nav>
<!-- Fin -->

<script>
    function user() {
        var username = prompt("Veuillez saisir votre nom d'utilisateur");
        var password  = prompt("Veuillez saisir votre mot de passe");
        if ((username === "") && (password === "")) {
            alert("Connection réussie");
        }
        else {
            alert("Connection échouée");
        }
    }
</script>

<!-- Importation du fichier body.jsp -->
<jsp:include page="body.jsp"></jsp:include>