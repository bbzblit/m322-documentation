[Go back to home page](./../README.md)

# Task 4

## Einführung
Ein ISO (Internationale Standardisierungs Organisation) Norm definiert eine Norm, welche international gilt und an welche sich möglichst alle halten sollen. Es gibt ISO Normen für alles Mögliche, so ist es auch keine Überraschung, dass es auch eine gibt, dass auf das Design von UIs angewendet werden kann. `ISO 9241-110` definiert, wie die Interaktion zwischen Menschen und Computer optimal verlaufen soll. Ein Unterkapitel daraus beschreibt, wie man Dialoge ideal gestaltet. Es ist in 7 Bereiche eingeteilt, auf die ich hier etwas genauer eingehen werde.

### 1. Aufgabenangemessenheit
Unter `Aufgabenangemessenheit` versteht man, dass ein Dialog so aufgebaut werden muss, dass er optimal an seine Aufgabe angepasst ist. Das heisst, dass der Dialog dem User ermöglicht, die Aufgabe möglichst effizient und einfach abzuschliessen.

### 2. Selbstbeschreibungsfähigkeit
Darunter versteht man, dass ein Dialog leicht und intuitiv zu verstehen ist. So sollte der User zur jeder Zeit wissen, an welchem Punkt er sich im Dialog befindet und wie er weiter (oder allenfalls auch zurück) kommt. Wichtig ist zu beachten, dass `Tooltips` in dieser Kategorie gänzlich ignoriert werden. Der User sollte bereits nach dem erfolgreichen Laden der View wissen, wie er weiterkommt.

### 3. Erwartungskonformität
Bei der `Erwartungskonformität` geht das darum, dass der User immer wissen sollte, was ihn erwartet, wenn er eine bestimmte Aktion ausführt. Sie sollte möglichst keine Fragen offen lassen, die möglicherweise einen Einfluss auf die Entscheidungen vom User haben. Ein Beispiel dafür wäre z.B. ein Windows Update. Der User sollte, bevor er das Update über einen Knopfdruck startet, wissen, was mit seinen geöffneten Dokumente passiert.

### 4. Fehlertoleranz
Views werden von Menschen benutzt und die machen bekanntlich öfters mal Fehler. Man kann allerdings versuchen, diese Fehlerzahl zu minimieren. Im Falle eines Fehlers wird dem User angezeigt, wie er diesen beheben kann. So sollte z.B. bei der falschen Eingabe eines Passworts die Fehlermeldung `Username or Password ist wrong` ausgegeben werden und nicht etwa: 
```
java.lang.InvalidArgumentException the username and password was not found in the database!
  on MyPasswordHandler handlePassword(String password) : 231
     Login getUserLogin(String usernme, String password) : 1231
     Main main() : 12
```

### 5. Steuerbarkeit
Der User sollte immer in der Lage sein, die Handlungen auszuführen, die er möchte. Nehmen wir mal als Beispiel einen Dialog, bei dem man ein Dokument hochladen kann (z.B. Google Drive). Nachdem der User den Hochladeprozess gestartet hat, stellt er fest, dass er leider das falsche Dokument ausgewählt hat. Er möchte nun den Prozess abbrechen und mit dem richtigen Dokument erneut starten. Leider lässt der Dialog dies nicht zu und zwingt dadurch den User den Hochladeprozess abzuschliessen. Es würde die Steuerbarkeit extrem verbessern, wenn man eine Möglichkeit hätte den Dialog zu beenden. 

### 6. Individualisierbarkeit
Die Views sollte sich an die Bedürfnisse des Users anpassen können. So gibt es zum Beispiel User die gerne die Schriftgrösse etwas grösser stellen möchten, um den Text besser lesen zu können. Andere User möchte vielleicht einen Darkmode usw. Zu viel Induvidualisierbarkeit könnte allerdings auch wieder andere Punkte wie z.B. die `Selbstbeschreibungsfähigkeit` beeinträchtigen.

### 7. Lernförderlichkeit
Der User wird den Dialog vermutlich mehrmals benutzen. Dadurch sollte er so designt werden, dass der User bei jeder Benutzung des Dialoges etwas schneller und effizienter damit arbeiten kann. Eine gute Möglichkeit dazu ist eine `Guide Toure` oder `Help`.  Die können dem User beim erstmaligen Start eine kurze Übersicht über alle Tools geben.

## Analyse meiner Views
Ich habe einmal meine 7 Views mit den 7 oben beschriebenen Punkten analysiert. 

|Regel|Erfüllt|Begründung|
|---|---|---|
|Aufgabenangemessenheit|`True`|Das Programm führt genau die Aufgaben auf, die es machen soll. Nämlich die Verwaltung und das Teilen von Noten.|
|Selbstbeschreibungsfähigkeit|`True`|Alle Aktionen sind mit entsprechenden Icons und allenfalls Text klar gekennzeichnet. So weiss z.B. jeder, dass das + zum Hinzufügen eines neuen Dokumentes benutzt werden kann. Am Anfang des Projektes wollte ich auch noch gewisse Aktionen über Mausklicke steuern. Allerdings bin ich mittlerweile davon abgekommen, da es für die meisten User nicht intuitiv erkennbar ist.|
|Erwartungskonformität|`True`|Alle Aktionen sind klar beschrieben und man weiss genau, was einen erwartet, wenn man auf einen bestimmten Knopf drückt.|
|Fehlertoleranz|`True`|Alle Usereingaben werden im Frotend validiert bevor sie ans Backend gesendet werden. Zudem werden sie auch noch ein 2. Mal im Backend vallidiert, falls der User direkt über die API mit der Application redet. Falls eine fehlerhafte Eingabe entdeckt wird, wird eine kurze, aber verständliche Fehlermeldung ausgegeben. Keine Eingabe, die der User macht, ist final. Sie können immer noch später bearbeitet oder gegebenenfalls auch gelöscht werde.|
|Steuerbarkeit|`True`|Die Steuerbarkeit ist bereits gut vorhanden. Alle Dialogfenster können mit einem klar ersichtlichen Kreuz auf der rechten Seite beendet werden. Zudem gibt es auch klar ersichtliche Links, um zwischen den einzelnen Views zu wechseln. |
|Individualisierbarkeit|`False`|Aktuell ist meine Applikation nicht zu stark individualisierbar. Die Applikation verfügt z.B. keinen Darkmode und auch sonst kann man an den Views wenig customizen.|
|Lernförderlichkeit|`False`|Auf meinen aktuellen Views gibt es noch kein initiales Tutorial, was beim ersten Einloggen auf den Server erscheint. Auch gibt es keine kleinen Hilfe Symbole neben den Icons, die es dem User Informationen über die Aktion gibt, welche beim Clicken ausgeführt wird. Der letzte Punkt ist allerdings in Planung und sollte planmässig im Endprodukt vorhanden sein.|

### Zusammenfassung
Wie man in der oberen Tabelle sieht, sind schon sehr viele Punkte gut erfüllt. Es gibt allerdings auch noch den einen oder anderen Punkt, an dem ich mein Produkt noch etwas verbessern könnte. Das Gute ist, dass ich bereits die nötigen Schritte für eine Verbesserung eingeleitet habe.
