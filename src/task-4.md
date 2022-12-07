# Task 4

## Einführung
Ein ISO (Internationale Standardisierungs Organisation) Norm definiert ein Norm, welches International gilt und an das sich möglichst alle Halten sollen. Es gibt ISO normel für alles Mögliche, so ist es auch keine Überaschung, dass es auch eines gibt, dass auf das Design von UIs angewendet werden kann. `ISO 9241-110` definiert wie die Interaktion zwischen Menschen und Computer optimal verlaufen soll. Ein Unterkapitel daraus beschreibt, wie man Dialoge Ideal gestatltet. Es ist in 7 Bereiche eingeteilt, auf die ich hier etwas genauer eingehen werde.

### 1. Aufgabenangemessenheit
Unter `Aufgabenangemessenheit` versteht man, dass ein Dialog so aufgebaut werden muss, dass er optimal an seine Aufgabe angepasst ist. Das heisst so viel wie, dass der Dialog dem User ermöglicht die Aufgabe möglichst effizient und einfach abzuschliessen.

### 2. Selbstbeschreibungsfähigkeit
Darunter besteht man, dass ein Dialog leicht und Intuitiv zu verstehen ist. So sollte der User zur Jeder Zeit wisse an welchen Punkt er sich im Dialog befindet und wie er weiter (oder allenfalls auch zurück) kommt. Wichtig ist zu beachten, dass `Tooltips` in dieser Katigorie gänzlich igrnoiert werden. Der User sollte bereits nach dem erfolgreichen Laden der View wissen wie er weiter kommt.

### 3. Erwartungskonformität

### 4. Fehlertoleranz
Views werden von Menschen benutzt und die machen bekanntlich öfters mal Fehler. Man kann allerdings versuchen, dieser Fehlerzahl zu vermeiden und dem User im Falle eines fehlers einfach aufzeigen, wie er diesen beheben kann. So sollte z.B. bei der Falschen eingabe eines Passworts die Fehlermeldung `Username or Password ist wrong` ausgegeben werden und nicht etwa: 
```
java.lang.InvalidArgumentException the username and password was not found in the database!
  on MyPasswordHandler handlePassword(String password) : 231
     Login getUserLogin(String usernme, String password) : 1231
     Main main() : 12
```
