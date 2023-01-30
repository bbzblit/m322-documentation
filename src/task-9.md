# Aufgabe 9

## Einleitung
Laut [admin.ch](https://www.bfs.admin.ch/bfs/de/home/statistiken/wirtschaftliche-soziale-situation-bevoelkerung/gleichstellung-menschen-behinderungen/behinderungen.html) gibt es in der Schweiz um die `1.7` Millionen Menschen mit Beinträchtigungen. Wenn man das auf die aktuelle Bevölkerungszahl ausrechnet macht das über `20%` aus. Für uns als Entwickler bedeutet dass, dass wir unsere Application auch so anpassen müssen, dass sie auch von den `20%` problemlos genutzt werden kann. In den meisten Fällen kann man das auch ohne grösseren Mehraufwand erledigen.


## Einschränkung Sehen

### Farbblindheit
Es gibt sehr viele Personen die eine Einschränkung im Sehen haben. Das kann von einer leichten bis zu einer starken Farbenblindheit gehen. Allein 1/10 Männer sind statistisch gesehen farbenblind. Dass heisst, dass sie bestimmte Farben nur schlecht oder gar nicht voneinander unterscheiden können. Für uns als Entwickler ist es jetzt wichtig, dass wir unsere Applicationen so gestalten, dass wir im Idealfall nicht gerade 2 Farben zur Unterscheidung voneinander nehmen, bei der häufig Farbenblindheit auftritt. Die wohl am häufigsten auftretende Farbenblindheit ist die Rot-Grün-Schwäche. 

### Eingeschränktes Sehen
Auch gibt es viele Personen, die nicht mehr so scharf sehen. So sollte man als Entwickler von einer Application immer mit einkalkulieren, dass bestimmte Personen kleine Schrift oder schrift mit wenig Kontrast nicht gut lesen können. Auch wenn ich persönlich finde, dass gräulicher Text in Überschriften oder Beschreibungen noch ganz gut aussehen, sollte man eher davon ablassen, wenn man die Application gut zugänglich für Personen machen möchte, die nicht mehr allzugut sehen können. 

### Gänzliche Blindheit
Wenn eine Person gar nichts oder nur zu einem schwachen Prozentsatz mehr sieht, helfen auch die gössten und kontrasstreichsten Texte nichts mehr. In diesem Fall hielft nur noch `text2speech` dabei bekommt die Person vor dem Computer eine Ansage, die beschreibt, was man auf der Website sieht und wo er sich gerade mit dem Mauszeiger befindet. Es gibt bereits eine Grosszahl an Programmen, welche eine Website oder auch eine App vorlesen können, wodurch wir als UI Designer das schon einmal nicht einbauen müssen. Allerdings darf man nicht vergessen, dass diese Tools nur mit dem Arbeiten können, was sie als UI präsentiert bekommen. Im Falle von Webdesign ist es z.B. extrem wichtig, dass man sein `HTML` richtig formatiert, damit die `text2speech` Software nicht verwirrt wird (z.B. `<h1>` kommt vor `<h2>`). <br/>
Ein häufiger Fehler, den Webentwickler machen, ist, dass bei Bildern einen Alternativtext steht. Für uns als Entwickler von einem UI macht es auf den ersten Blick keinen Unterschied, was man als Alternativtext mitgibt. Für Personen mit einer Blindheit ist dieser Text allerdings dafür veranwortlich, um zu beschreiben, was auf dem Bild zu sehen ist. Aus diesem Grund sollte man **nie** vergessen einen Alternativtext zu setzen.
```html
<img src="tree.png" alt="<Put alt text here>" width="500" height="333">
``` 

## WCAG
`WCAG` oder auch `Web Content Accessibility Guidelines` ist simpel gesagt einfach eine Ansammlung an Guidlines, an die man sich halten sollte, um eine Website möglichst barierefrei zu gestalten. Die `Web Content Accessibility Guidelines` lassen sich grob in 4 verschiedene Unterkapitel aufteilen.
### Wahrnehmbar
Man stellt dazu auf einer Website für möglichst viele Medientypen einen alternativen Medientype vor. Um es im Kontext einer Website zu beschreiben, sollten z.B. bei Bildern ein Alternativtext mitgegeben oder auch bei Videos mit Audio einen Untertitel angezeigt werden. Zudem beinhaltet es auch noch die Tatsache, dass eine Application möglichst in der Schriftgrösse verstellbar sein sollte. Bei Websiten ist dieses Feature glücklicherweise in den meisten Browser bereits implementiert, da man da relativ einfach die Grösse einer Website ändern kann.  Allerdings sollte man schauen, dass das Design der Website immer noch einigermassen gut und übersichtlich aussieht, auch wenn die Grösse der Website verändert wird. 

### Bedienbar
Die Bedienbarkeit beinhaltet vor allem auch, dass der User genügend Zeit bei der Eingabe vom Input hat. Auch ein weiteres Beispiel ist, dass Fehlermeldungen die als Pop-ups aufspringen, nicht sofort wieder verschwinden sondern, dass man genug Zeit zum Lesen hat. Auch mir ist es schon passiert, dass ich eine Error Message auf einem Pop-up nicht lesen konnte, da es zu schnell wieder verschwunden ist. Und wenn ich als relativ schneller Leser, etwas nicht rechtzeitig lesen kann, möchte ich gar nicht wissen, wie es jemandem ergeht, der Probleme beim Lesen hat.

### Verständlich
Die Bedienung einer Application sollte einfach verständlich und intuitiv sein. So sollten z.B bei einem Formular kurze Infotexte angezeigt werden. Auch ist es wichtig, dass in Beschreibungstexten die jeder User verstehen muss, nicht komplizierte Wörter verwendet werden.
#### Einfach zu verstehen
Durch diesen Button beenden sie den Registrierungsprozess und es speichert ihre Angaben. Sie können sich danach anmelden und die Services nutzen.
#### Schlecht zu verstehen
Wenn sie auf den Button drücken, werden die von ihnen eingegebenen Daten validiert und in der Datenbank abgespeichert. So können sie sich später mit einem Benutzernamen und Passwort anmelden, um Zugang zu den von dem Anbieter zur Verfügung gestellten Services zu haben.
### Robust
Robust beinhaltet die Fähigkeit von einer Application, um mit assistierenden Technologien zu funktioneren. Im Kontext von Webdevelopmnt beinhaltet das, wie bereits beschrieben, die Tatsache, ob ein `HTML` file validie aufgebaut ist und ob Alternativtexte vorhanden sind.
<br/><br/>
Wie bereits gesagt, ist WCAG einfach eine Ansammlung von Guidlines, an die man sich halten sollte. Genauer gesagt, besteht die Guidline aus 78 sogenannten `Erfolgskriterien`, an die man sich halten sollte. Diese Erfolgskritien sind in 3 verschiedene Gruppen aufgeteilt und dadurch nach Priorität geordnet. In einer guten Application sollten mindestens alle Punkte von der ersten und von der zweiten Gruppe erfüllt sein.


|Name|Kurze Beschreibung|
|---|----|
|Stufe `A` | Ist die Gruppe mit den Anforderungen mit der höchsten Priorität|
|Stufe `AA`|Ist die Gruppe mit den Anforderungen mit mittleren Priorität|
|Stufe `AAA`|Ist die Gruppe mit den Anforderungen von der niedrigsten Priorität. Diese Anforderungen sind zwar gut, wenn sie in einer Application vorhanden sind, es ist allerdings auch nicht schlimm, wenn die eine oder andere davon nicht beachtet wurde|
## SUS
`Sus` bedeutet so viel wie `System Usability Scale` und bietet eine Möglichkeit zu checken, ob die Accessability auf einer Website ausreichend ist. Das Ganze wird normalerweise anhand von einem Fragebogen durchgeführt. Allerdings gibt es durchaus heutzutage auch begrenzte Tests, welche automatisiert durchgeführt werden. Ein gutes Beispiel für automatisierte Tests ist zum Beispiel die Unterkategorie `Accessibility` von Chrome Lighthous Bericht. Allerdings können in solchen automatisierten Tests nur Sachen überprüft werden, wie: ist das HTML richtig aufgebaut oder hat jedes Image einen Alternativtext?  

## Accessibility auf SPA (single page application)
In meinem Beispiel verwende ich Angular für das UI von meiner Projektarbeit. Dadurch ist mein Endprodukt nichts anderes als eine Website. Da Angular eine relativ bekannte Framework ist, das auch sehr gerne mal für grössere Projekte eingesetzt wird, gibt es glücklicherweise eine Menge Tools, mit denen man die Accessability verbessern kann. Die meisten Tools sind dazu ausgelegt, um ideal mit Screen Reader zu funktionieren. So gibt es z.B. extra voreingebaute Komponente, mit denen man einfach mit ScreenReader kommunizieren kann. Eine Übersicht über alle Tools findet man auf [Offiziellen Angular Website](https://angular.io/guide/accessibility) 
