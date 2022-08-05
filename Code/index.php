<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<title>Site valoch Propre</title>
		<link rel="stylesheet" href="./css/style.css" type="text/css" />
		<!-- <meta http-equiv="refresh" content="3" /> -->
	</head>



	<body>
		<!--checkbox note: la checkbox n'est pas coché par defaut -->
		<input type="checkbox" class="menu" id="menu" checked="checked" />
		<nav>
			<div class="instagram"><a href="https://instagram.com/j.v.spot"><img src="../Photo/instagram.png" class="imageInsta"></a></div>
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
                    $nom_dossier = '../Photo/photo_valentin/';

                    $dossier = opendir($nom_dossier);
					$cpt = 0;
                    while($nom_images = readdir($dossier))
                    {
						
                        if($nom_images != '.' && $nom_images != '..')
						{
							$chemin = $nom_dossier . $nom_images;
							$infos_image = @getImageSize($chemin); // '@' est placé devant la fonction getImageSize()pour empêcher l'affichage des erreurs si l'image est absente.

							$largeur_image = $infos_image[0];
							$hauteur_image = $infos_image[1];

							echo $chemin.' --> '.$hauteur_image.'x'.$largeur_image.'<br />';
/*
							if ($largeur_image > $hauteur_image)
							{
								$class = 'paysage';
							}
							else
							{
								$class = 'portrait';
							}
*/

							if ($largeur_image != 1350 && $largeur_image != 1080 && $largeur_image != 2700 && $largeur_image != 2160 || $hauteur_image != 1350 && $hauteur_image != 1080 && $hauteur_image != 2700 && $hauteur_image != 2160)
							{
									// unlink($chemin);
									$cpt++;
							}


                        }
					}
					echo $cpt;

					closedir($dossier);
				?>
				<div class="lignePhoto">
					<img src="../Photo/photo_valentin/2021-06-07__21.24.20.jpeg" class="portrait">
					<img src="../Photo/photo_valentin/2020-07-06__13.46.58.jpeg" class="paysage">
				</div>
				<div class="lignePhoto">
					<img src="../Photo/photo_valentin/2020-07-06__13.46.58.jpeg" class="paysage">
					<img src="../Photo/photo_valentin/2021-06-07__21.24.20.jpeg" class="portrait">
				</div>
			</main>
		</div>
	</body>
</html>