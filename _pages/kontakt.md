---
title: "Kontakt"
permalink: "/kontakt"
excerpt: "Kontaktieren Sie Hannes Tscherrig. Er wird sich so bald als möglich bei Ihnen melden."
author_profile: true
---
Kommen Sie mit Fragen oder Anregungen gerne auf mich zu. Ich freue mich von Ihnen zu hören.
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
		<input type="text" name="vorname">
	</label>
	<label>
		Nachname:
		<input type="text" name="nachname">
	</label>
    <label>
		Ihre E-Mail (benötigt):
		<input type="email" name="_replyto" required>
	</label>
	<label>
		Ihre Nachricht (benötigt):
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