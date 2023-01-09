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
