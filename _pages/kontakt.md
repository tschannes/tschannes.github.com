---
title: "Kontakt"
permalink: "/kontakt"
excerpt: "Kontaktieren Sie Hannes Tscherrig. Er wird sich so bald als möglich bei Ihnen melden."
---


<form action="https://formspree.io/{{site.email}}" method="POST">    
<p class="mb-4">Kommen Sie auf mich zu. Ich freue mich von Ihnen zu hören!</p>
<div class="form-group row">
<div class="col-md-6">
<input class="form-control" type="text" name="name" placeholder="Name*" required>
</div>
<div class="col-md-6">
<input class="form-control" type="email" name="_replyto" placeholder="Ihre E-mail*" required>
</div>
</div>
<textarea rows="8" class="form-control mb-3" name="message" placeholder="Ihre Nachricht*" required></textarea>    
<input class="btn btn-success" type="submit" value="Abschicken">
</form>