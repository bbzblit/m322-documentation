# Implementierung
Ich habe die Implementierung von meiner Application mithilfe von `Angular` im Frontend, `Spring Boot` im Backend und `MongoDB` als Datenbank realisiert.
Ich kannte die Technelogien bereits im Vorfeld dadurch konnte ich sofort mit der Implementierung beginnen und musste mich nicht zuerst in die Technelogie einlesen. <br/>
In der Implementierung habe ich mich primär auf das Frontend also die Implementierung mit Angular. Dadurch kann es sehr gut sein, dass im Backend gewissen Sachen wie Validation nicht einwandsfrei funktioneiren. Allerdings lag es auch nicht im Scop von dem Modul eine einwandfreie `API` zu implementieren.
<br/>
Allerdings habe ich mir im Allgemeinen durch meine Auswahlen von Technelogien eher mehr Arbeit gemacht als eigentlich nötig gewesen ist. Angular ist supper für die implementierung von `SPA` geignet und man kann es auch relativ gut bis ins kleineste Deteil anpassen. Der Nachteil davon ist, dass man nur sehr wenige bis garkeine Vorgefertigte Designs hat wie zum beispiel bei Vaadin. Für die Implementierung habe ich mir bei gewissen Views Angular Materials verwendet. Dadurch hatte ich vorgefertigte Komponente und Icons. 

## Technelogien

### Angular
Angular ist ein Framework mit dem man einfach HTML code clientseitlich generieren kann. Angular ist zwar nicht das einfachste zu lernende Framwork für das erstellen von `SPA` allerdings hat es extrem viele Feature und auch eine extrem gute Documentation. Theoretisch kann man Angular mit JavaScript oder auch TypeScript verwenden. Persönlich tendenziere ich eher zu TypeScript, da ich die Features von TypeScript wie typensicherheit sehr zu schätzen wisse.

### RXJS
Auch [RXJS](https://rxjs.dev/) möchte ich noch kurz erwähnen. Ich verwende es dazu, um die Daten welche ich vom Backend erhalte im Frontend zu verwalten und zwischenzuspeichern. Von Faktor her ist es eine Datenbank die im Client läuft.

### Spring Boot
Spring Boot ist ein Framwork mit dem man unteranderem einfach APIs implementieren kann. Sring boot ist relativ angehem zu benutzen da es unteranderm auch die ganze Verbindung mit der Datenbank regelt. Jsons die als Requests reingkommen werden automatisch von Spring Boot validiert und anschliessend zu Java Objekte umgewandelt. Auch bei Abfragen an die Datenbank muss man nur minimale Querys schreiben, da der grösste Teil von Springboot erledigt wird.
### MongoDB
MongoDB ist eine nicht relatione Datenbank die Speichern von Daten in `json` form angewendet werden kann. Einser der tollen Feature an MongoDB find ich persönlich dass man fast keine Relationen zwischen den Objekten hat. Ebenfalls kann man grundsätzlich einmal jedes Objekt in einer `Collection` (Table in `SQL`) abspeichern ohne vorher zu definieren wie die Struktur von dem Objekt aussieht. Auch das stellen von Querys auf die Datenbank ist extrem einfach und hat auch geschwindigkeiten wie bei relationalen Datensätzen. Ein weiteres sehr cooles feature an MongoDB ist, dasss es nichtnur vertikal sondern auch horizontal scalierbar ist. In meinem kleinen Projekt spielt allerdings die skalierbarkeit noch keine wichtige Rolle. 

### Docker
Docker selbst ist zwar keine Technelogie die im Sourcecode verwendet wird allerdings denke ich dass sie in dieser Liste denoch nicht fehlen darf. Ich dokorisiere meine Applikationen bei jedem commit automatisch mithilfe eines Dockerfiles welches ich geschrieben habe. Dadurch kann ich dann jederzeit einfach diese Appliktaion aufstarten und dass ohne dass ich viel Resourcen gebrauche oder die Applikationen verteilt auf mehreren VMs laufen lasse. Zudem bietet es auch noch den Vorteil dass ich eventuel dass ganze später einmal auf einem Kubernetscluster deployen kann (sobald mein selbst gehostetes cluster ready ist).

## Aufbau
Wie bereits gesagt ist eine Applikation in 3 schichten aufgeteilt, die aus dem Frontend, dem Backend un der Datenbank bestehen. In diesem Modul ist der Haupfokus auf dem Frontend gelegen, wesshalb ich auch logischerweise die meiste Zeit damit verbracht habe dieses zu Implementieren und zu optimieren. 

<!--TODO: Bild hier einfügen-->
Im frontend verwende ich sogennante Components umd die Logik voneinander zu trennen. Dabei gilt, dass jeder Component seine eigene Funktion hat. Ein Component besteht immer aus 4 Fieles. Das `.html` file enthält die grundstruktur von dem Komponent. Die Logik dazu ist im `.ts` file zu finden und die styles im `.scss` (andere schreibweise von css wie `ts` zu `js`). Zu guter letzt gibt es auch noch ein `.spec.ts` file. Dises beinhaltet die Tests. 

# Probleme und Lösungen
Während des Projektes hatte ich keine grössere Probleme mit meiner Applikation. Im falle dass ein kleines Problem auftrat wusste ich schnell woran es lag und konnte es dadurch dann auch beheben. Falls ich mal nicht weiter wusste konnte ich mir einfach hilfe im Internet oder der officiellen Dokumentation von `Angular` (Die sehr gut und Ausführlich ist) hohlen. Ein problem welches ich relativ lange hatte war, dass der nginx server den ich als load balacer eisetzte im docker compose nicht mit dem backend connecten wollte. Im endefekt hatte es sich allerdings als tippfehler herausgestellt. <br/>
Ein weiteres Problem welches ich kurz hatte war, dass meine `javax` Validatoren einfach nicht wirkten. Sie sind einfach nicht aufgerufen worden. Nach ein paar sinlossen versuchen meinerseitzt herauszufinden ob vielleicht ein package fehlte stellte sich heraus, dass diese nur beim initialen compilen eingesetzt werden. Sobald die Spring Devtools den kompleten code neu Compilen und das Programm reloaden wurden die Validatoren nicht upgedatet. Möglicherweise handelt es sich auch um einen Fehler von meiner Seite aus. Da ich allerdings die Validatoren nicht konstant abändern müsste hat die Lösung mit stoppen und neustarten (vom Programm) für mich problemlos funktioniert

## Bewertung
Ich selber bin mit meiner geleisteten Arbeit sehr zu Frieden. Ich habe viel Zeit in das Projekt gesteckt und konnte dadurch auch ein gutes Resultat erzielen. 
