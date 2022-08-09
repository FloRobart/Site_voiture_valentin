<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<title>Acceuil</title>
		<link rel="stylesheet" href="./css/style.css" type="text/css" />
		<link rel="icon" href="../Photo/images/voiture.png" type="image/icon" />
		<!-- <meta http-equiv="refresh" content="3" /> -->
	</head>



	<body>
		<!--checkbox note: la checkbox n'est pas coché par defaut -->
		<input type="checkbox" class="menu" id="menu" checked="checked" />
		<nav>
			<div class="instagram"><a href="https://instagram.com/j.v.spot"><img src="../Photo/images/instagram.png" class="imageInsta"></a></div>
			<div class="navigation">
				<ul>
					<li><a href="#">Accueil</a></li>
					<li><a href="./pages/galerie_photos.php" >Galerie photos</a></li>
					<li><a href="./pages/a_propos.html" >A propos</a></li>
					<li><a href="./pages/me_contacter.php" >Me contacter</a></li>
				</ul>
			</div>
		</nav>


		<div class="ensPage">
			<label for="menu" class="labelBorderNav">
				<div class="borderNav"></div>
			</label>


			<header>
				<div class="divRecherche">
					<form method="get">
						<input class="searchBar" type="text" name="voiture" placeholder="Entrer un critère de recherche" />
					</form>
					<select name="lstChoix" id="lstChoix">
						<option value="0">--chosissez une option--</option>
						<option value="1">marque de voiture       </option>
						<option value="2">lieux de la photo       </option>
						<option value="3">date de la photo        </option>
						<option value="4">type de voiture         </option>
						<option value="5">couleur de voiture      </option>
						<option value="6">modèle de voiture       </option>
					</select>

					<input class="btnValider" type="submit" name="btnValider" value="Valider">
				</div>
				<h1> VALENTIN GALLETYER </h1>
			</header>

			<main>
				<?php
					@include('./php/affichage_galerie.php');
					affichage('../Photo/photos_voitures/acceuil/');
				?>
			</main>
		</div>
	</body>
</html>