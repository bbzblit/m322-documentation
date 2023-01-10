# Aufgabe 9

## Einleitung
Laut [admin.ch](https://www.bfs.admin.ch/bfs/de/home/statistiken/wirtschaftliche-soziale-situation-bevoelkerung/gleichstellung-menschen-behinderungen/behinderungen.html) gibt es in der Schweiz um die `1.7` Millionen Menschen mit beinträchtigungen. Wenn man das auf die aktuelle Bevölkerungsanzahl ausrechnet macht das über `20%` aus. Für uns als Entwickler bedeutet dass, dass wir unsere Application auch so anpassen müssen dass sie auch von den `20%` aus problemlos benutzt werden kann. In den meisten Fällen kann man dass auch ohne grösseren Mehraufwand erledigen.


## Einschränkung Sehen

### Farbblindheit
Es gibt sehr viele Personen die eine Einschränkung im sehen haben. Das kann von einer leichten Farbenblindheit bist zu einer kompletten Blindheit gehen. Alleine 1/10 Männer sind statistisch gesehen Farbenblind. Dass heisst, dass sie bestimmte Farben nur schlecht oder garnicht voneinander unterscheiden können. Für uns als Entwickler ist es jetzt wichtig, dass wir unsere Applicationen so gestalten dass wir im Idealfall nicht gerade 2 Farben zur unterscheidung voneinander nehmen bei der häuffig Farbenblindheit auftritt. Die wohl am häuffigsten Auftretende Farbblindheit ist die Rot-Grün schwäche. 

### Eingeschränktes Sehen
Auch gibt es viele Personen, die nichtmehr so scharf sehen. So sollte man als Entwickler von einer Application immer mit einkalulieren, dass bestimmte Personen kleine Schrift oder schrift mit wenig Kontrasst nicht gut lesen können. Auch wenn ich persönlich finde dass leicht gräulicher Text in überschriften oder beschreibungen teilweise noch ganz gut aussieht sollte man ehre davon ablassen wenn man die Application gut zugänglich für personen machen möchte die nichtmehr all zu gut sehen können. 

### Gänzliche Blindheit
Wenn eine Person garnichts oder nur zu einem schwachen prozentsatz mehr sieht helfen auch die gössten und kontrasstreichsten texts nichts mehr. In diesem Fall hielft nurnoch `text2speech` dabei bekommt die Person vor dem Computer eine Ansage, die beschreibt was man auf der Website sieht und wo er sich gerade mit dem Mauszeiger befindet. Es gibt bereits eine Grosszahl an programmen welche eine Website oder auch eine App vorlesen können, wodurch wir als UI Designer das schon einmal nicht einbauen müssen. Allerdings darf man nicht vergessen, dass diese Tools nur mit dem Arbeiten können was sie als UI räsentiert bekommen. Im Falle von Webdesign ist es z.B. extrem wichtig, dass man sein `HTML` richtig Formatiert, dammit die `text2speech` software nicht verwirrt wird (z.B. `<h1>` kommt vor `<h2>`). <br/>
Ein häufiger Fehler den Webentwickler auch machen, ist das bei Bilder einen Alternativtext steht. Für uns als Entwickler von einem UI macht es auf den ersten Blick keinen Unterschied was man als Alternativtext mitgibt. Für Personen mit einer Blindheit ist dieser Text allerdings dafür veranwortlich um zu beschreiben was auf dem Bild zu sehen ist. Aus diesem Grund sollte man **nie** vergessen einen Alternativtexts zu setzen.
```html
<img src="tree.png" alt="<Put alt text here>" width="500" height="333">
``` 

## WCAG
`WCAG` oder auch `Web Content Accessibility Guidelines` ist simpel gesagt einfach eine Ansamlung an guidlienes in die man sich halten solte, um eine Website möglichst barierefrei zu gestallten. Die `Web Content Accessibility Guidelines` lassen sich grob in 4 verschiedene Unterkapittel aufteilen.
### Wahrnehmbar
Unter dem Kapittel Wahrnehmbar stehen gilt, dass man möglichst für jeden Medientyp auf einer Website eine alternatve bietet. Um es im kontext einer Website zu beschreiben sollten z.B. bei Bilder einen alternativtext mitgeben ode auch bei Videos mit audio einen Untertitel angezeigt. Zudem beinhaltet es auch noch die Tatsache, dass eine Application möglichst in der Schriftgrösse verstellbar sein sollte. Bei Websiten ist dieses Feauter glücklicherweise in den meisten Browser bereits implementiert, da man da relativ einfach die grösse einer website ändern kann. Allerdings gibt es leider auch Websiten die sich dadurch nicht anpasssen lassen. Allerdings sollte man schauen, dass das Design der Website immernoch einigermassen gut und übersichtlich aussieht auch wenn die grösse der Website verändert wird. 

### Bedienbar
Die Bedienbarkeit beinhaltet vorallem so sachen wie, dass der User genügen Zeit bei der Eingabe vom Input hat. Auch ein weiteres Beispiel ist, dass Fehlermeldungen die als popups angezeigt nicht sofort wieder verschwieden sondern dass man genug zeit zum lesen hat. Auch mir ist es schon passiert, dass ich eine error Message auf einem popup nicht lesen konnte, da es zu schnell wieder verschwunden ist. Und wenn ich als relativ schneller leser etwas nicht rechtzeitig lesen kann möchte ich gar nicht wissen wie es jemandem ergeht, der probleme beim Lesen hat.

### Verständlich
Die Bedinung einer Application sollte einfach verständlich und intuitiv sein. So sollten z.B bei einem Formular kurze Infotexte angezeigt werden. Auch ist es wichtig, dass in Beschreibungstexten die jeder user verstehen muss nicht komplizierte Wörter verwendet werden.
#### Einfach zu verstehen
Durch diesen Button beenden sie den Registrierungsprozess und speichert ihre Angaben. Sie könnst sich danach anmelden und die Services nutzen.
#### Schlecht zu verstehen
Wenn sie auf den Button drückt, werden die von ihnen eingegebenen Daten validiert und in der Datenbank abgespeichert, um sich später mit einem Benutzernamen und Passwort anmelden zu können und Zugang zu den von dem Anbieter zur Verfügung gestellten Services zu haben.
### Robust
Robust beinhaltet die Fähigkeit von einer Application um mit assistierenden Technologien zu funktioneren. Im kontext von Webdevelopmnt beinhaltet das wie bereits beschrieben die Tatsache ob ein `HTML` file validie aufgebaut ist und ob alternativ texte vorhanden sind.
<br/><br/>
Wie bereits gesagt ist WCAG einfach eine Ansamlung von guidlines an die man sich halten sollte. Genauer besagt besteht die guidline aus 78 sogennante `erfolgskriterien` an die man sich hallten sollte. Diese erfolgskritien sind in 3 verschiedene Gruppen aufgeteilt und dadurch nach Priorität geortnet. In einer guten Application sollten im mindestens alle Punkte von der ersten und von der zweiten Grupper erfüllt sein.
|Name|Kurze Beschreibung|
|---|----|
|Stufe `A` | Ist die Gruppe mit den Anforderungen mit der höchsten priorität|
|Stufe `AA`|Ist die Gruppe mitd den Anforderungen mit mittlereer priorität|
|Stufe `AAA`|Ist die Gruppe mit den Anforderungen von der niderigsten priorität. Diese Anforderungen sind zwar gut wenn sie in einer Application vorhanden sind es ist allerdings auch nicht schlimm wenn die einte oder andere davon nicht beachtet wurde|
