---
title: "Audio bearbeiten für Audio-Anfänger"
excerpt: "Ein grosser Bestandteil von Video ist Audio. Für mich als Anfänger eine schwarze Kunst. Diese Checkliste hat mir geholfen."
image: "images/audio-for-video.jpg"
tags: []
categories: [video, audio]
---

Als quereinsteigender Videomacher lerne ich ständig Dinge dazu. Auf der Videoseite ist dieser Lernprozess ziemlich offensichtlich. Im wahrsten Sinn des Wortes. Wenn etwas schief oder einfach noch nicht optimal läuft, sieht man das auf den ersten Blick.

## TLDR?

1. Rauschreduktion
2. Noise Gate
3. Equalizer
4. De-Esser
5. Kompressor
6. Hall (wenn nötig)
7. Limit
8. Normalize

Beim Aufnehmen und der Nachbearbeitung von Stimmen und Geräuschen -- dem sogenannten Audio Processing -- dagegen bleibt viel im Dunkeln. Wie zeichnet man auf? Wie bereinigt man ein rohes Audio File? Welche Effekte müssen drauf? Und was meinen die guten Youtuber alle mit Mix und Master?

Für mich gab es und gibt es noch immer einiges an Klärungsbedarf. Deswegen meine persönliche Checkliste (die sich ziemlich sicher weiterentwickeln wird). Vielleicht hilft sie jemandem, der grad wie ich lange zwischen Transienten, Sibilanten und Störfrequenzen nur noch sanftes Rauschen hört.

## Die Aufnahme

- Wähle einen **ruhigen Raum**. Und: Wähle einen Raum, der Schallwellen möglichst wenig reflektiert. Je mehr glatte Flächen (Parkettböden, glatte Wände, Fenster etc.) ein Raum hat, desto schwieriger wird es, guten Ton zu bekommen. Such dir stattdessen Räume mit viel Textil (also z.B. ein Schlafzimmer, eine Garderobe o.ä.).
- Gehe so **nahe** wie möglich an die Tonquelle heran. Ideal für Sprache sind nicht weiter als 40 oder 50 Zentimeter Abstand.
- Lerne dein Mikrofon kennen. Egal ob eingebautes Smartphone-Mikrofon, Lavalier- oder Richtmikrofon, probiere verschiedene Positionierungen und Ausrichtungen aus (siehe auch ([Einführung in Mikrofonierung von Sproutvideo](https://sproutvideo.com/blog/three-essential-mic-setups-when-to-use-them.html)).
- **Lautstärke**. Achte darauf, dass deine Aufnahme nicht zu leise, vor allem aber nicht zu laut ist. Idealerweise kommen die lautesten Geräusche deiner Aufnahme irgendwo zwischen -6 und -12 Dezibel zu liegen. Warum ist das wichtig? Wenn du zu leise aufzeichnest, musst du später in der Nachbearbeitung dein Signal stark verstärken und je nach Recorder führt das zu vielen Nebengeräuschen. Und wenn du zu laut aufnimmst, führt das zum sogennanten "Clipping" des Audio-Signals, also einer Distortion, die du im Edit nicht mehr korrigieren kannst.

## Cleaning-up

1. Reduziere **Rauschen**. Bevor du irgend etwas anderes tust, kümmere dich darum, dass du die Neben- und Hintergrundgeräusche deiner Aufnahme minimierst. Viele Audio Programme funktionieren so, dass du einen Teil deines Tracks markierst, auf dem nur Hintergrund zu hören ist. Dieses Sample verwenden Programme wie Adobe Audition oder Audacity dazu, das Hintergrundrauschen zu minimieren.
2. Nutze ein **Gate**: Oft war bei mir selbst nach der Rauschreduktion immer noch Hintergrundgeräusche zu hören. Zwar ganz leise nur, aber eben doch. Hier kommt ein sogenanntes Noise Gate zum Einsatz. Dieses Tool schneidet alles aus deinem Track, was leiser ist, als eine gewisse Schwelle die du definierst. Damit das sauber funktioniert und der Track natürlich bleibt, muss man definitiv etwas herumprobieren. Aber durch ein Gate kann ein Track um Klaseen sauberer werden.

## Processing

3. Nutze einen **Equalizer**. Mit einem Equalizer kannst du gewisse Frequenzbänder lauter oder leiser machen. Um Stimmen klarer zu machen, werden per Equalizer oft Frequenzen unter 80Hz praktisch eliminiert (z.B. per HighPass-Filter). Dadurch fallen tieffrequente Störgeräusche weg. Weiter wird oft bei 200 bis 300 Hz etwas leiser gestellt, weil die hier schwingenden Frequenzen Stimmen oft etwas dumpf wirken lassen. Je nach Stimme schneide ich auch ganz oben am Frequenzband viel ab, (also per LowPass-Filter), damit störende Hochfrequenzen wegfallen.
4. Spiele mit einem **De-Esser**: Ein De-Esser minimimiert störende Sibilanten beim Sprechen. Zischlaute klingen oft mit einem De-Esser weniger störend.
5. Mehr Dampf dank **Kompressor**. Kompressoren beinflussen die Lautstärke deines Signals abhängig davon wie laut es an einer bestimmten Stelle ist. Normalerweise nutze ich einen Kompressor, um sehr laute Stellen in einem Dialog auf den Pegel der durchschnittlichen Spitzen zu bringen. Dadurch wird die Dynamik verringert und das Signal uniformer. Für Hörer bedeutet das eine angenehmere Hörerfahrung. Beachte allerdings: Wie bei vielen dieser Tipps ist weniger oft mehr.
6. Minimiere **Hall**: Wenn du in einem Raum aufnimmst, der sich nicht ideal für Audioaufnahmen eignet, kannst du versuchen im Edit den Hall zu minimieren.

## Mixing

Nachdem du deine Aufnahmen aufgeräumt und verarbeitet hast, kannst du sie mit anderen Audio-Elementen kombinieren.

Dieser Schritt im Audio-Prozess wird Mix genannt und es steckt drin, was drauf steht. Du mischst Audioaufnahmen mit Musik, Geräuschen und so weiter. 

Wichtig in diesem Schritt ist das Levelling. Entscheide dich, welche deiner Sound-Bausteine im Vordergrund stehen soll. Wenn du zum Beispiel willst, dass eine Stimme immer verständlich bleibt, sorge dafür, dass Sie im Verhältnis zum Rest des Mixes lauter bleibt.

## Mastering

Das sogennante Mastering ist der letzte Schritt in der Prozesskette, bevor ein Voice-over, ein Mix oder ein Musikstück ausgeliefert wird.

Anders als beim Mixing geht es hier nicht mehr um das Verhältnis der einzelnen Geräusche, Stimmen und Musik.

Vielmehr geht es darum, den gesamten Output noch einmal so zu schleifen, dass er optimal funktioniert.

Für Audio-Anfänger wie mich bedeutet das in erster Linie folgendes:

Working on the entire mixed audio output.

7. Verwende einen **Limiter**. Ein Limiter stellt sicher, dass dein Output nie lauter als wird, als eine von dir vorgeschriebene Grenze. Dadurch bist du ziemlich sicher, dass bei deinem Hörer keine Distortionen auftreten werden.
8. Halte dich an **Lautstärken-Standards**. Ähnlich wie beim visuellen Teil des Videomachens gibt es auch für Audio Standards, an die man sich halten sollte. Für Youtube sollten wir also unser Audio auf -14LUFS und -2dBTP normalisieren. Die beiden Zahlen geben eine gewünschte durchschnittliche und maximale Lautstärke an. Audio auf Netflix z.B. ist mit -27LUFS im Schnitt viel leiser, darf aber ebenfalls maximal -2dBTP laut werden. Sieh hierzu auch [den super Artikel auf SageAudio](https://www.sageaudio.com/blog/mastering/mastering-voice-over-dialogue-for-video.php).

## Reihenfolge ist wichtig

Eines der grössten Learnings beim Audio-Bearbeiten für mich war, dass die Reihenfolge der einzelnen Schritte einen riesigen Unterschied machen kann.

Wenn du z.B. zuerst verstärkst und dann Rauschen reduzierst, kann das wesentlich schwieriger werden, weil halt auch alle unerwünschten Geräusche versärkt wurden.

Aus diesem Grund versuche ich bei neuen Audio-Projekten, meine Checkliste hier, möglichst Schritt für Schritt durchzugehen. 

Wie sieht euer Audio-Workflow aus? Welche Erfahrung habt ihr gemacht?