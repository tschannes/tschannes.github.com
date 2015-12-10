---
layout: post
title: "Bitcoin-Glossar für Krypto-Neulinge"
date: 2015-12-10
excerpt: "Nodes, Blocks und Hashes: Das sind die Bausteine der Bitcoin-Ökonomie. Es sind auch Bausteine, die für mich lange nur Bahnhof bedeuteten. Ein Klärungsversuch."
img: "images/bitcoin.jpg"
alt: "Bitcoin ist bei Weitem nicht mehr die einzige Krypto-Währung."
caption: "Bild: https://www.flickr.com/photos/gamingfloor/galleries/72157638888166706/#photo_11297228794"
comments: true
related: true
categories: content
---

Letzens sollte ich einen Text über die Blockchain redigieren, also den Mechanismus, auf dem die Bitcoin-Wirtschaft beruht. Null Problemo sagte ich mir, das packen wir und stürzte mich auf den Beitrag.

Das Problem: Ich verstand wenig. Nicht nur hatte ich nicht wirklich eine Vorstellung davon, was ein Block, ein Hash oder ein Miner genau sind. Weil mir die einzelnen Elemente schon nicht klar waren, konnte ich sie auch in keinen vernünftigen Zusammenhang bringen.

## Bitcoin-Begriffe eingeführt

Ich tat also, was ich immer tue, wenn ich etwas nicht verstehe: Ich las, was und wie andere über mein Thema schreiben. Aus meinen Recherchen habe ich neun erkärungsbedürftige Begriffe zusammengetragen.

> A **blockchain** is a public ledger of all Bitcoin **transactions** that have ever been executed. It is constantly growing as ‘completed’ **blocks** are added to it with a new set of recordings. The blocks are added to the blockchain in a linear, chronological order. Each **node** (computer connected to the Bitcoin network using a client that performs the task of validating and relaying transactions) gets a copy of the blockchain, which gets downloaded automatically upon joining the Bitcoin network. The blockchain has complete information about the addresses and their balances right from the **genesis block** to the most recently completed block ([Blockchain-Definition von Investopedia](http://www.investopedia.com/terms/b/blockchain.asp), meine Hervorhebungen).

### 1. Blockchain

Die Blockchain ist also **eine Art öffentliche Buchführung**, die alle jemals getätigten Einträge erfasst. In gewisser Weise ist die Blockchain die Datenbank hinter Bitcoin.

Diese Kette ist, wie es die Definition oben sagt, öffentlich und auf jedem Computer des Netzwerkes verteilt. Diese massive Verteilung macht das System sehr Ausfall-resistent. Wenn hier eine Blockchain verloren geht, sind im restlichen Netzwerk noch immer unzählige Kopien vorhanden.

### 2. Node

Anders als herkömmliche Austausch-Plattformen (Paypal, Amazon, Online-Retailer) gibt es im Bitcoin-Universum keine zentrale Stelle, die das System überwacht und etwa sicherstellt, dass mit einer Überweisung nicht mehrfach bezahlt wird (siehe das [Double-Spending-Problem](https://www.wikiwand.com/en/Double-spending)).

Die Rolle der Kontrolleure übernehmen die Knotenpunkte im Netzwerk, die Nodes. **Jede ans Bitcoin-Netzwerk angeschlossene Applikation** ist ein solcher Knotenpunkt. Die Mehrheit der Nodes bestimmt, ob ein Block, und damit die darin enthaltenen Zahlungen, gültig sind oder nicht.

### 3. Transaktion 

Bitcoin Nutzer tätigen über eine spezielle Applikation Zahlungen, die mehr oder weniger so aussehen, wie klassische Banküberweisungen. Ein Sender X überweist einen Betrag Y an einen Empfänger Z.

Anders als im klassischen Zahlungsverkehr bestimmt jeder Sender, wie viel ihm die Sicherung und schnelle Beglaubigung seiner Überweisung wert sind. Diese selbstbestimmte Gebühr, welche bei jeder Zahlung beiseite gelegt wird, kommt den Minern zugute und motiviert sie damit das Netzwerk weiterhin zu sichern.

### 4. Proof of Work 

Ein Proof of Work ist eine Aufgabe, die nur durch Ausprobieren unzähliger Möglichkeiten sehr mühsam zu einem Resultat führt. Gibt es aber erst einmal ein Resultat, ist es sehr einfach zu überprüfen, ob dieses in der Tat gültig ist.

Das heisst, es ist schwierig den Proof of Work zu erbringen, aber einfach zu beweisen, dass die Aufgabe richtig gelöst wurde. 

Das Bitcoin-System verlangt vor jedem Hinzufügen eines neuen Blocks zur Blockchain einen neuen Proof of Work. Die Schwierigkeit der Aufgaben ist so kalibriert, dass das weltweite Netzwerk alle 10 Minuten einen Proof of Work löst und damit einen Block validiert.

### 5. Hashing- oder Chiffrier-Algorithmus 

Hashing oder Chiffrier-Algorithmen sind die **Wurstmaschinen des digitalen Zeitalters**. Man gibt beliebiges Datenmaterial in sie hinein und erhält etwas, dass immer in etwa gleich aussieht, dessen Inhalt aber vollkommen undurchsichtig bleibt: Den Hash. 

Solange alle Zutaten gleich sind, gibt ein Chiffrieralgorithmus immer den gleichen Hash aus. Ändert sich aber nur ein winziges Detail in einer der Zutaten, verändert sich der Hash komplett:

> SHA256("Franz jagt im komplett verwahrlosten Taxi quer durch Bayern") = 
d32b568cd1b96d459e7291ebf4b25d007f275c9f13149beeb782fac0716613f8   
SHA256("Frank jagt im komplett verwahrlosten Taxi quer durch Bayern") = 
78206a866dbb2bf017d8e34274aed01a8ce405b69d45db30bafa00f5eeed7d5e

Bitcoin-Miner suchen nun basierend auf einigen bekannten Ingredienzen (Challenge) einen Proof, so dass sich ein Hash ergibt, der mit einer bestimmten Anzahl Nullen beginnt. Nach Finden eines gültigen Proofs, wird ein neuer Block zur Blockchain hinzugefügt. 


### 6. Hash

Ein Hash ist eine Zeichenfolge wie die folgende:

> d32b568cd1b96d459e7291ebf4b25d007f275c9f13149beeb782fac0716613f8

Dabei stehen die Buchstaben a bis f für die Zahlen 10 bis 15 (siehe [Hexadezimalsystem](https://www.wikiwand.com/de/Hexadezimalsystem)).

### 7. Miner

Miner sind diejenigen Personen (und ihre hochspezialisierten Maschinen), die zur Sicherung der Blöcke Proof of Work-Probleme lösen. Für das Lösen dieser Probleme erhalten Miner eine festgelegte Prämie und die von den Nutzenden festgelegten Überweisungsgebühren.

Das weltweite Netzwerk benötigt für einen Proof of Work etwa 10 Minuten. Für einen Hacker mit einem Bruchteil der Rechenleistung des globalen Mining-Netzwerkes ist es ungleich schwieriger, den Proof of Work vor allen anderen zu lösen.

Dieses **Prinzip der Rechendominanz** ist der Grundstein, warum Bitcoin trotz dem Fehlen einer zentralen Kontrollinstanz relativ betrugssicher ist.


### 8. Block

Wenn die Blockchain eine Art globales Verzeichnis aller jemals getätigten Transaktionen ist, dann ist ein Block eine Seite oder ein **Auszug dieses Verzeichnisses**.

Miner sammeln noch nicht erfasste Transaktionen und bündeln Sie in einem Datenblock. Dann versuchen Sie den Proof of Work zu leisten. Die Node, welche das Problem zuerst löst, fügt den Block zur offiziellen Blockchain hinzu.

Dank der Rechendominanz ist die Wahrscheinlichkeit, dass ein ehrlicher Miner zuerst zu einem gültigen Proof gelangt, viel grösser, als dass ein böswilliger Hacker die halbe Welt überholt. Vorausgesetzt natürlich, dass mehr ehrliche als unehrliche Miner das Netzwerk stützen.


### 9. Bitcoin

Bitcoin schliesslich ist die populärste Anwendung der Blockchain. Als bekannteste digitale Währung setzt sie die Blockchain als dezentralen Sicherungsmechanismus ein. 


## Weiterlesen, bitteschön:

Natürlich reicht es nicht, die grundlegenden Begriffe aus der Bitcoin-Welt zu verstehen, um wirklich zu verstehen, was die Blockchain-Technologie angestossen hat:

Um ein Bild des funktionierenden Ganzen zu erhalten, empfiehlt es sich [Satoshi Nakamotos Thesenpapier](https://bitcoin.org/bitcoin.pdf) zu lesen, auf welchem Bitcoin beruht. Es erklärt neben den technischen Mechanismen auch, welche menschlichen und sozialen Prinzipien die Bitcoin-Wirtschaft am Leben erhalten.

Die [Podcast-Serie der Khan-Academy](https://www.khanacademy.org/economics-finance-domain/core-finance/money-and-banking/bitcoin/) erklärt Bitcoin von Grund auf und leistet dabei ganze Arbeit. Die anderthalb Stunden sind auf jeden Fall gut investierte Zeit.

Bitcoin ist längst nicht mehr die einzige Krypto-Währung auf dem Markt. Eine ganze Reihe [alternativer virtueller Währungen](http://www.welivesecurity.com/2015/03/05/five-alternatives-bitcoin/) machen Bitcoin den Markt streitig. 

Bitcoin ist darauf ausgelegt, viel Rechen-Power zu verbrauchen. Lesen Sie, wie die [Krypto-Währung aus umweltpolitischer Sicht](http://bitcoin.stackexchange.com/questions/2455/what-is-the-ecological-effect-of-increase-work-for-the-bitcoin-chain) beurteilt wird.

Warum die Blockchain ein solch gewaltiges disruptives Potenzial birgt, welches weit über die Finanzindustrie hinausgeht, zeigt diese Reportage der BBC:

<div class="frame">
    <iframe width="560" height="315" src="/loader.gif" data-layzr="https://www.youtube.com/embed/2ky3mDUoh74" frameborder="0" allowfullscreen></iframe>
</div>

Wer Bitcoin nicht nur verstehen, sondern selber nach Krypto-Gold schürfen will, sieht sich am besten den [Getting Started Guide](https://www.weusecoins.com/en/mining-guide/) auf weusecoins.com an.

## Anwendungen des Blockchain-Prinzips

- [http://maidsafe.net/](http://maidsafe.net/)
- [https://www.ethereum.org/](https://www.ethereum.org/)
- [https://proofofexistence.com/](https://proofofexistence.com/)
- [https://www.namecoin.org/](https://www.namecoin.org/)

<div class="frame">
    <iframe width="560" height="315" src="/loader.gif" data-layzr="https://www.youtube.com/embed/Pu4PAMFPo5Y" frameborder="0" allowfullscreen></iframe>
</div>



