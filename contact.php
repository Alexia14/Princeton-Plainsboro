<?php

session_start(); //Call to $_SESSION[]

function print_text($table) {

	// Return HTML code about an article of text type

	$html = "<div class=\"div_class\">\n";
	$html .= "\t<h3>" . $table['titre'] . "</h3>\n";
	$html .= "\t<p>" . $table['texte'] . "</p>\n";
	$html .= "</div>\n";

	return $html;
}

function print_link_text($table) {

	// Return HTML code about an article of link and text type

	$html = "<a class=\"div_class\" href=\"" . $table['link'] . "\">\n";
	$html .= "\t<h3>" . $table['titre'] . "</h3>\n";
	$html .= "\t<p>" . $table['texte'] . "</p>\n";
	$html .= "</a>\n";

	return $html;
}

function print_photo($table) {

	// Return HTML code about an article of photo type

	$html = "<div class=\"div_class\" href=\"" . $table['link'] . "\">\n";
	$html .= "\t<img src=\"Images/" . $table['photo'] . "\">";
	$html .= "</div>\n";

	return $html;

}

function print_photo_text($table) {

	// Return HTML code about an article of photo and text type

	$html = "<div class=\"div_class\">\n";
	$html .= "\t<h3>" . $table['titre'] . "</h3>\n";
	$html .= "\t<div class=\"photo_text\">\n";
	$html .= "\t\t<img src=\"Images/" . $table['photo'] . "\">";
	$html .= "\t\t<p>" . $table['texte'] . "</p>\n";
	$html .= "\t</div>\n";
	$html .= "</div>\n";

	return $html;
}

function print_link_photo($table) {

	// Return HTML code about an article of link and photo type

	$html = "<a class=\"div_class\" href=\"" . $table['link'] . "\">\n";
	$html .= "\t<h3>" . $table['titre'] . "</h3>\n";
	$html .= "\t<div class=\"photo_text\">\n";
	$html .= "\t\t<img src=\"Images/" . $table['photo'] . "\">";
	$html .= "\t\t<p>" . $table['texte'] . "</p>\n";
	$html .= "\t</div>\n";
	$html .= "</a>\n";

	return $html;
}

function which_type($table) {

	// Find the type of the article and call the right function

	if ($table['type'] == "text") {
		return print_text($table);
	}
	else if ($table['type'] == "photo") {
		return print_photo($table);
	}
	else if ($table['type'] == "photo and text") {
		return print_photo_text($table);
	}
	else if ($table['type'] == "link and photo") {
		return print_link_photo($table);
	}
	else if ($table['type'] == "link and text") {
		return print_link_text($table);
	}
}

function print_page($page) {

	// Display the article form the db in the good order

	try {
	    $bdd = new PDO('mysql:host=localhost;dbname=g_practitioner;charset=utf8', 'root', '');
	}
	catch (Exception $e) {
		die('Erreur : ' . $e->getMessage());
	}

	// The code below will display the IDs in the same line if they are in the same ten

	$reponse = $bdd->query('SELECT * FROM ' .$page);

	// We first search the highest ID

	$max_id = -1;
	while ($donnees = $reponse->fetch()) {
		if ($donnees['id'] > $max_id) {
			$max_id = $donnees['id'];
		}
	}

	$reponse->closeCursor();
	$nb_it = (($max_id / 10)) + 1;

	// $nb_it is the number of the iterations that we need, to go to the ten of the highest ID

	for ($i=0; $i < $nb_it; $i++) {
		$reponse = $bdd->query('SELECT * FROM '. $page);
		$cpt = 0;
		while ($donnees = $reponse->fetch()) {
			// We browse the db and count the number of article we have

			if (( $donnees['id'] >= ($i*10) and $donnees['id'] < (($i+1)*10) )) {
				$cpt++;
			}
		}
		$reponse->closeCursor();

		if ($cpt > 0) {
			// If this ten in not empty we create a div to display everything in line
			$html = "<div class=\"div_print_page_article\">\n";

			$reponse = $bdd->query("SELECT * FROM " .$page . " WHERE id >= " . ($i*10) . " AND id < ". (($i+1)*10) . " ORDER BY id ");
			while ($donnees = $reponse->fetch()) {
				// We browse the ten and call the right functions to display the article
				$html .= which_type($donnees);
				$html .= "\n";
			}
			$html .= "</div>\n";
			$reponse->closeCursor();
			echo $html;
		}
	}
}

function print_timetable() {

	// This function display the timetable from the db in a table

	try {
	    $bdd = new PDO('mysql:host=localhost;dbname=g_practitioner;charset=utf8', 'root', '');
	}
	catch (Exception $e) {
		die('Erreur : ' . $e->getMessage());
	}

	$reponse = $bdd->query('SELECT * FROM timetable');
	$donnees = $reponse->fetch();

	$html = "<table class=\"tab_hour_style\">\n";
	$html .= "\t<thead><th>Days</th><th>Hours</th></thead>\n";
	$html .= "\t<tbody>\n";
	$html .= "\t\t<tr><td> Monday </td><td> " . $donnees["Monday"] . " </td></tr>\n";
	$html .= "\t\t<tr><td> Tuesday </td><td> " . $donnees["Tuesday"] . " </td></tr>\n";
	$html .= "\t\t<tr><td> Wednesday </td><td> " . $donnees["Wednesday"] . " </td></tr>\n";
	$html .= "\t\t<tr><td> Thursday </td><td> " . $donnees["Thursday"] . " </td></tr>\n";
	$html .= "\t\t<tr><td> Friday </td><td> " . $donnees["Friday"] . " </td></tr>\n";
	$html .= "\t\t<tr><td> Saturday </td><td> " . $donnees["Saturday"] . " </td></tr>\n";
	$html .= "\t\t<tr><td> Sunday </td><td> " . $donnees["Sunday"] . " </td></tr>\n";
	$html .= "\t</tbody>\n</table>\n";

	echo $html;

}
?>

<!DOCTYPE HTML>
<html>
	<head>
		<title>Contact Us</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="main.css" />
		<link rel="icon" type="image/png" href="Images/icon.ico" />
	</head>
	<body>

	<?php include('header.php');?>

	<h2 class="titles_h2">Contact Us</h2>

	<?php print_page('contact');?>

	<?php print_timetable(); ?>

	<?php include('footer.php');?>

	</body>
</html>