---
title: "Kontakt"
permalink: "/kontakt"
excerpt: "Kontaktieren Sie Hannes Tscherrig. Er wird sich so bald als möglich bei Ihnen melden."
author_profile: true
---

Sie haben zu viel Text auf dem Teller? Sehen vor lauter Nebensätzen die Story nicht mehr? Wittern tolle Geschichten, haben aber keine Zeit zum Erzählen?

Am besten schildern Sie mir Ihre Challenge ganz kurz im Formular. Und dann formulieren wir zusammen eine Mission, die Sie weiterbringt. Am besten bei einem Tässchen Kaffee, versteht sich.

<!-- modify this form HTML and place wherever you want your form -->
<form
	action="https://formspree.io/f/tschannes@gmail.com"
	method="POST"
	>
	<!--
	<label for="anrede">Anrede:</label>
	<select id="anrede" required>
		<option value="frau">Frau</option>
		<option value="mann">Mann</option>
		<option value="divers">Divers</option>
	</select>
-->
	<label>
		Vorname:
		<input type="text" name="vorname" required>
	</label>
	<label>
		Nachname:
		<input type="text" name="nachname" required>
	</label>
    <label>
		Ihre E-Mail:
		<input type="email" name="_replyto" required>
	</label>
	<label>
		Ihre Nachricht:
		<textarea name="message" required></textarea>
	</label>
	<!-- your other form fields go here -->
	<button type="submit">Abschicken</button>
</form>
<script>
		window.onbeforeunload = () => {
	for(const form of document.getElementsByTagName('form')) {
	form.reset();
	}
	}
</script>