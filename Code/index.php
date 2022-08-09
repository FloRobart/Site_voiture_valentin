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
			<div class="instagram"><a href="https://instagram.com/j.v.spot"><img src="../Photo/images/instagram.png" class="imageInsta"></a></div>
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
					$paysage = array();
					$portrait = array();

                    $nom_dossier = '../Photo/photos_voitures/';
                    $dossier = opendir($nom_dossier);

					$cptPaysage = 0;
					$cptPortrait = 0;
                    while($nom_images = readdir($dossier))
                    {
						
                        if($nom_images != '.' && $nom_images != '..')
						{
							$chemin_image = $nom_dossier . $nom_images;
							$infos_image = @getImageSize($chemin_image); // '@' est placé devant la fonction getImageSize()pour empêcher l'affichage des erreurs si l'image est absente.

							$largeur_image = $infos_image[0];
							$hauteur_image = $infos_image[1];

							// echo $chemin_image.' --> '.$hauteur_image.'x'.$largeur_image.'<br />';


							if ($largeur_image != 1350 && $largeur_image != 1080 && $largeur_image != 2700 && $largeur_image != 2160 || $hauteur_image != 1350 && $hauteur_image != 1080 && $hauteur_image != 2700 && $hauteur_image != 2160)
							{
								echo $chemin_image . ' --> image non valide<br />';
							}
							else
							{
								if ($largeur_image > $hauteur_image)
								{
									$paysage[$cptPaysage] = $chemin_image;

									$cptPaysage ++;
								}
								else
								{
									$portrait[$cptPortrait] = $chemin_image;

									$cptPortrait ++;
								}
							}
                        }
					}
					closedir($dossier);


					$cpt = count($paysage);
					if (count($paysage) > count($portrait))
					{
						$cpt = count($portrait);
					}

					for ($i = 0; $i < $cpt; $i+=2)
					{
						// affichage des photos
						echo '<div class="lignePhotoNormal">';
							echo '<img src="'.$paysage[$i].'" class="paysage" />';
							echo '<img src="'.$portrait[$i].'" class="portrait" />';
						echo '</div>';

						if ($i+1 < $cpt)
						{
							echo '<div class="lignePhotoNormal">';
								echo '<img src="'.$portrait[$i+1].'" class="portrait" />';
								echo '<img src="'.$paysage[$i+1].'" class="paysage" />';
							echo '</div>';

							// suppression des photos du tableau
							$paysage [$i+1] = null;
							$portrait[$i+1] = null;
						}

						// suppression des photos du tableau
						$paysage [$i  ] = null;
						$portrait[$i  ] = null;
					}


					// affichage des photos paysages restante s'il n'y a plus de photo portrait
					if (!empty($paysage))
					{
						$cpt = 0;
						while($cpt < count($paysage))
						{
							if ($paysage[$cpt] != null)
							{
								if ($cpt+1 >=  count($portrait))
								{
									echo '<div class="uniquePhotoPaysage">';
									echo '<img src="'.$paysage[$cpt].'" />';
									
								}
								else
								{
									echo '<div class="lignePhotoPaysage">';
									echo '<img src="'.$paysage[$cpt  ].'" />';
									echo '<img src="'.$paysage[$cpt+1].'" />';
									$cpt ++;
								}
								echo '</div>';
							}

							$cpt ++;
						}
					}


					// affichage des photos portraits restante s'il n'y a plus de photo paysage
					if (!empty($portrait))
					{
						$cpt = 0;
						while($cpt < count($portrait))
						{
							if ($portrait[$cpt] != null)
							{
								if ($cpt+1 >=  count($paysage))
								{
									echo '<div class="uniquePhotoPortrait">';
									echo '<img src="'.$portrait[$cpt].'" />';
									
								}
								else
								{
									echo '<div class="lignePhotoPortrait">';
									echo '<img src="'.$portrait[$cpt  ].'" />';
									echo '<img src="'.$portrait[$cpt+1].'" />';
									$cpt ++;
								}
								echo '</div>';
							}
							$cpt ++;
						}
					}
				?>
			</main>
		</div>
	</body>
</html>