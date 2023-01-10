# Implementierung
Ich habe die Implementierung von meiner Application mithilfe von `Angular` im Frontend, `Spring Boot` im Backend und `MongoDB` als Datenbank realisiert.
Ich kannte die Technelogien bereits im Vorfeld dadurch konnte ich sofort mit der Implementierung beginnen und musste mich nicht zuerst in die Technelogie einlesen. <br/>
In der Implementierung habe ich mich primär auf das Frontend also die Implementierung mit Angular. Dadurch kann es sehr gut sein, dass im Backend gewissen Sachen wie Validation nicht einwandsfrei funktioneiren. Allerdings lag es auch nicht im Scop von dem Modul eine einwandfreie `API` zu implementieren.
<br/>
Allerdings habe ich mir im Allgemeinen durch meine Auswahlen von Technelogien eher mehr Arbeit gemacht als eigentlich nötig gewesen ist. Angular ist supper für die implementierung von `SPA` geignet und man kann es auch relativ gut bis ins kleineste Deteil anpassen. Der Nachteil davon ist, dass man nur sehr wenige bis garkeine Vorgefertigte Designs hat wie zum beispiel bei Vaadin. Für die Implementierung habe ich mir bei gewissen Views Angular Materials verwendet. Dadurch hatte ich vorgefertigte Komponente und Icons. 

## Technelogien

### Angular
Angular ist ein Framework mit dem man einfach HTML code clientseitlich generieren kann. Angular ist zwar nicht das einfachste zu lernende Framwork für das erstellen von `SPA` allerdings hat es extrem viele Feature und auch eine extrem gute Documentation. Theoretisch kann man Angular mit JavaScript oder auch TypeScript verwenden. Persönlich tendenziere ich eher zu TypeScript, da ich die Features von TypeScript wie typensicherheit sehr zu schätzen wisse.

### Spring Boot
Spring Boot ist ein Framwork mit dem man unteranderem einfach APIs implementieren kann. Sring boot ist relativ angehem zu benutzen da es unteranderm auch die ganze Verbindung mit der Datenbank regelt. Jsons die als Requests reingkommen werden automatisch von Spring Boot validiert und anschliessend zu Java Objekte umgewandelt. Auch bei Abfragen an die Datenbank muss man nur minimale Querys schreiben, da der grösste Teil von Springboot erledigt wird.
### MongoDB
MongoDB ist eine nicht relatione Datenbank die Speichern von Daten in `json` form angewendet werden kann. Einser der tollen Feature an MongoDB find ich persönlich dass man fast keine Relationen zwischen den Objekten hat. Ebenfalls kann man grundsätzlich einmal jedes Objekt in einer `Collection` (Table in `SQL`) abspeichern ohne vorher zu definieren wie die Struktur von dem Objekt aussieht. Auch das stellen von Querys auf die Datenbank ist extrem einfach und hat auch geschwindigkeiten wie bei relationalen Datensätzen. Ein weiteres sehr cooles feature an MongoDB ist, dasss es nichtnur vertikal sondern auch horizontal scalierbar ist. In meinem kleinen Projekt spielt allerdings die skalierbarkeit noch keine wichtige Rolle. 

### Docker
Docker selbst ist zwar keine Technelogie die im Sourcecode verwendet wird allerdings denke ich dass sie in dieser Liste denoch nicht fehlen darf. Ich dokorisiere meine Applikationen bei jedem commit automatisch mithilfe eines Dockerfiles welches ich geschrieben habe. Dadurch kann ich dann jederzeit einfach diese Appliktaion aufstarten und dass ohne dass ich viel Resourcen gebrauche oder die Applikationen verteilt auf mehreren VMs laufen lasse. Zudem bietet es auch noch den Vorteil dass ich eventuel dass ganze später einmal auf einem Kubernetscluster deployen kann (sobald mein selbst gehostetes cluster ready ist).
