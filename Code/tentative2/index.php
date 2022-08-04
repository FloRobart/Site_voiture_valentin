<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<title>Site valoch Propre</title>
		<link rel="stylesheet" href="./css/style.css" type="text/css" />
		<!-- <meta http-equiv="refresh" content="3" /> -->
	</head>



	<body>
		<!--checkbox note: la checkbox est coché par defaut -->
		<input type="checkbox" class="menu" id="menu" /> <!-- checked="checked" -->
		<nav>
			<div class="instagram"><a href="https://instagram.com/j.v.spot"><img src="../../Photo/instagram.png" class="imageInsta"></a></div>
			<div class="navigation">
				<ul>
					<li><a href="#">Accueil</a></li>
					<li><a href="" >Galerie photos</a></li>
					<li><a href="" >A propos</a></li>
					<li><a href="" >Me contacter</a></li>
				</ul>
			</div>
		</nav>


		<div class="ensPage">
			<label for="menu" class="labelBorderNav">
				<div class="borderNav"></div>
			</label>


			<header>
				<div class="recherche">
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
					$nom_dossier = '../../Photo/photo_galerie';
					$dossier = opendir($nom_dossier);
					$image_info = array();

					while($fichier = readdir($dossier))
					{
						if($fichier != '.' && $fichier != '..')
						{
							echo $fichier.'<br />';
							getimagesize($fichier, $image_info);
							echo $image_info;
						}
					}

					closedir($dossier);
				?>

				<div class="test">
					<img src="../../Photo/photo_valentin/2021-06-07__21.24.20.jpeg" class="portrait">
					<img src="../../Photo/photo_valentin/2020-07-06__13.46.58.jpeg" class="paysage">
				</div>
				<div class="test">
					<img src="../../Photo/photo_valentin/2020-07-06__13.46.58.jpeg" class="paysage">
					<img src="../../Photo/photo_valentin/2021-06-07__21.24.20.jpeg" class="portrait">
				</div>
			</main>
		</div>
	</body>
</html>