# Task 4

## Einführung
Ein ISO (Internationale Standardisierungs Organisation) Norm definiert ein Norm, welches International gilt und an das sich möglichst alle Halten sollen. Es gibt ISO normel für alles Mögliche, so ist es auch keine Überaschung, dass es auch eines gibt, dass auf das Design von UIs angewendet werden kann. `ISO 9241-110` definiert wie die Interaktion zwischen Menschen und Computer optimal verlaufen soll. Ein Unterkapitel daraus beschreibt, wie man Dialoge Ideal gestatltet. Es ist in 7 Bereiche eingeteilt, auf die ich hier etwas genauer eingehen werde.

### 1. Aufgabenangemessenheit
Unter `Aufgabenangemessenheit` versteht man, dass ein Dialog so aufgebaut werden muss, dass er optimal an seine Aufgabe angepasst ist. Das heisst so viel wie, dass der Dialog dem User ermöglicht die Aufgabe möglichst effizient und einfach abzuschliessen.

### 2. Selbstbeschreibungsfähigkeit
Darunter besteht man, dass ein Dialog leicht und Intuitiv zu verstehen ist. So sollte der User zur Jeder Zeit wisse an welchen Punkt er sich im Dialog befindet und wie er weiter (oder allenfalls auch zurück) kommt. Wichtig ist zu beachten, dass `Tooltips` in dieser Katigorie gänzlich igrnoiert werden. Der User sollte bereits nach dem erfolgreichen Laden der View wissen wie er weiter kommt.

### 3. Erwartungskonformität
Bei der `Erwartungskonformität` geht das darum, dass der User immer wissen sollte was ihn erwartet wenn er eine Bestimmte akkton ausführt. Sie sollte möglichst keine fragen offen lassen, die möglicherweise einen einfluss auf die Entscheidungen vom User haben. Ein Beispiel dafür währe z.B. ein Windows Update. Der User sollte befor er das Update über einen Knopfdruck startet wissen, wass mit seinen geöffneten Documenten passiert.

### 4. Fehlertoleranz
Views werden von Menschen benutzt und die machen bekanntlich öfters mal Fehler. Man kann allerdings versuchen, dieser Fehlerzahl zu vermeiden und dem User im Falle eines fehlers einfach aufzeigen, wie er diesen beheben kann. So sollte z.B. bei der Falschen eingabe eines Passworts die Fehlermeldung `Username or Password ist wrong` ausgegeben werden und nicht etwa: 
```
java.lang.InvalidArgumentException the username and password was not found in the database!
  on MyPasswordHandler handlePassword(String password) : 231
     Login getUserLogin(String usernme, String password) : 1231
     Main main() : 12
```

### 5. Steuerbarkeit
Der User sollte immer in der Lage sein die Handlungen auszuführen, die er möchte. Nehmen wir mal als Beispiel ein Dialog, bei dem man ein Document Hochladen kann (z.B. Google Drive). Nachdem der User den Hochladeprozess gestartet hat stellt er fest, dass er leider das Falsche Document ausgewählt hat. Er möchte nun den Prozess abbrechen und mit dem richtigen Document erneut starten. Leider lässt der Dialog dies nict zu und zwingt dadurch den User den Hochladeprozess abzuschliessen. Es würde die Steuerbarkeit extrem verbessern, wenn man eine Möglichkeit hätte den Dialog zu beenden. 

### 6. Individualisierbarkeit
Die Views sollte sich an die Bedürfnisse des Users anpassen können. So gibt es zum Beispiel User die gerne die Schriftgrösse etwas grösser stellen möchten, um den Text besser lesen zu können. Andere User möchte vielleicht einen Darkmode usw. Zu viel Induvidualisierbarkeit könnte allerdings auch wieder andere Punkte wie z.B. die `Selbstbeschreibungsfähigkeit` beeinträchtigen.

### 7. Lernförderlichkeit
Der User wird den Dialog vermutlich mehrmals benutzen. Dadurch sollte er so designt werden, dass der User bei jeder Benutzung des Daloges etwas schneller und effizienter damit arbeiten kann. Ein gute Möglichkeit dazu ist eine `Guide Toure` oder `Help`.  Die können dem User beim Initialen Stark eine kurze Übersicht über alle Tools geben.
