# 2. Auftrag

In diesem Auftrag geht es darum, die verschiedenen Views von der Application darzustellen. Dadurch kann man, basierend auf den ersten Auftrag, entscheiden, ob die Views so für den Endbenutzer geeignet sind. Allfällig kann man dann auch noch Änderungen vornehmen. 


- **Login Screen** <br/>
Die erste View, welche der User zu Gesicht bekommen, wenn er die Website öffnet ist ein Login Screen. Dieses Loginscreen ist übersichtlich und klar gestaltet, dass man sich schnell zurechtfindet. Der Hauptfokus von der View besteht auf der Eingabe von dem `username` und des `passworts`. Alternativ steht auf der View auch noch die Möglichkeit offen, einen neuen Account zu erstellen oder das Passwort zu resetten. Diese beiden Elemente sind allerdings gezielt etwas weniger präsent platziert, dammit sie nur auffallen, wenn man nach einer solchen Option sucht. Im Footer der Website befinden sich zudem noch 3 weitere Links, die unter anderem zum Impressum der Website führen. 
![image](https://user-images.githubusercontent.com/99135388/202231406-3650f55a-003e-4b73-8169-1302714d9f70.png)

- **Sing Up Screen** <br/>
Falls der User sich nun dazu entscheidet, bei der Sing Up View einen neuen Useraccount anzulegen, kann er das, in dem er auf den Link `Or create a new account` klickt. Danach wird er dann zur Sing Up View weitergeleitet. 
Die Sing up View ist ähnlich strukturiert wie der Login Screen. Auch in ihr sollte der Hauptfokus auf der Eingabe der Userdaten liegen. Sie wurde ausserdem noch um 2 weitere Felder erweitert. Nämlich umd die Eingabe von der `Email Adresse` und um die erneute Eingabe vom `passwort`. Falls der User sich nun allerdings dennoch dazu entscheidet, dass er sich doch lieber einloggen oder sein passwort zurücksetzen möchte, kann er jederzeit über den Link `Or Login` zur Login View zurückkehren. Auch in diesem Beispiel ist der Link zu der View gezielt versteckt, damit der User sie nur dann findet, wenn er gezielt danach sucht.  
![image](https://user-images.githubusercontent.com/99135388/202233537-24debedd-cab0-40a0-9c42-ccc82a865739.png)

- **Forgot Password** <br/>
Nun kann es auch einmal vorkommen, dass der User sein Password vergessen hat. Falls das der Fall ist, kann er auf der Login View auf den Link `Forgot password?` klicken. Anschliessend erscheint dann ein Popup, indem er seine Email Addresse eingeben kann. Das Ganze ist gezielt als Popup designt, um dem User zu suggerieren, dass er jedereit zur Login View zurückkehren kann. <br/>
![image](https://user-images.githubusercontent.com/99135388/202235316-e76f817a-1f44-4fb2-84d3-e430da2facc9.png)
<br/>
Wenn der User nun erfolgreich seine Email Adresse eingegeben hat, bekommt er nach kürzester Zeit einen Resetlink auf seine Email Adresse gesendet. Mithilfe von diesem Link ist der User nun in der Lage, sein Password zu ändern. Diese View ist relativ simpel gehalten und beinhaltet lediglich 2 Eingabefenster und ein Button, um die Eingaben zu bestätigen. Diese View braucht keinen Link, der auf eine andere View verweist, da der User normalerweise auf diese View direkt aus einem Link drauf zugreift. Wenn der User erfolgreich das neue Password eingegeben hat, wird er direkt wieder auf die Startseite weitergeleitet.

![image](https://user-images.githubusercontent.com/99135388/202239685-aed88313-0bea-4a34-a2dc-7a30f0ae4284.png)

- **Folder View** <br/>
Nachdem der User sich erfolgreich angemeldet hat, sieht er eine Übersicht über alle seine Notenblätter. Ein Notenblatt ist simpel eine Ansammlung von verschiedenen Fächern. Auf der Seite werden nicht nur die eigenen Notenblätter angezeigt, sondern auch die von anderen Personen auf die man Zugriff hat. Die einzelnen Folder könnten auch über bestimmte Acctions bearbeitet oder gelöscht werden. Auch ein neuer Folder kann über eine Acction hinzugefügt werden. Da man sich auch aus der Application ausloggen möchte, wird ein Logout Button auf der rechten Seite bereitgestellt. Die View sollte möglichst minimalistisch gehalten werden, um eine einfachere Bedienung zu ermöglichen.
![image](https://user-images.githubusercontent.com/99135388/202249661-49cacfda-356c-4d90-91fa-3e13142047d4.png)

- **Noten View** <br/>
Durch einen simplen Klick auf eines der Notenblätter kommt man in eine Übersicht mit allen Fächern. Das Ganze ist in einer Tabelle strukturiert. Die einzelnen Noten sind mit sogennanten `chips` dargestetllt. Durch die farbliche Hinterlegung erhält man schnell eine Übersicht von allen Noten. Wenn man nun eine zusätzliche Note hinzufügen möchte, kann man das einfach dadurch machen, dass man mit dem Mauszeiger in das Feld mit allen Noten anklickt, und dann die Note eingibt. Dadurch spart man sich den lästigen Umweg über ein eigenes Dialogfenster. <br/>
In gewissen Fällen kann es gut auch einmal vorkommen, dass die verschiedenen Noten unterschiedlich gewichtet werden. Bei solchen kann man mit einem einfachen Klick auf den `chip` die Gewichtung anpassen. 
![image](https://user-images.githubusercontent.com/99135388/202264377-876f0b74-12ef-432e-a0e1-84600bd9c1c2.png)

- **Freigaben** <br/>
In gewissen Fällen möchte man das Notenblatt anderen Personen freigeben. Das kann man ganz einfach über die Freigabe View machen, welche sich leicht über das `share` Symbol öffnen lässt. In dem Freigabe Dialog sieht man alle Personen, welche bereits Zugang zu dem Notenblatt haben. Um das Notenblatt einer weiteren Person freizugeben, kann man die `Email` Addresse von der besagten Person oben eingeben. Um sie anschliessend wieder zu entfernen, muss man lediglich auf den delete Button klicken. Natürlich ist diese View nur für den Eigentümmer des Notenblattes sichtbar. 

![image](https://user-images.githubusercontent.com/99135388/202268661-82f86f21-6a67-4f86-af3e-04c12afacec0.png)
