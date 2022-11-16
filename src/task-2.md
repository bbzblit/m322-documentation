# 2. Auftrag

In diesem Auftrag geht es darum, die verschiedenen Views von der Application darzustellen. Dadurch kann man basierend auf den ersten Auftrag entscheiden, ob die Views so für den Endbenutzer geeignet sind. Allfällig kann man dann auch noch änderungen vornehmen. 


- **Login Screen** <br/>
Die erste View, welche der User zu Gesicht bekommen, wenn er die Website öffnet ist ein Login Screen. Diese Loginscreen ist übersichtlich und klar gestalltet, dass man sich schnell zurechtfindet. Der Hauptfokus von der View besteht auf der Eingabe von dem `username` und des `passworts`. Alternativ steht auf der View auch noch die Möglichkeit offen, einen neuen Account zu erstellen oder das Passwort zu resetten. Diese beiden Elemente sind allerdings gezielt etwas weniger Präsent platziert, dammit sie nur auffallen, wenn man nach einer solchen Option sucht. Im fotter vo der Website befindet sich zudem noch 3 weiter Views die z.B das Impressum beinhalten. 
![image](https://user-images.githubusercontent.com/99135388/202231406-3650f55a-003e-4b73-8169-1302714d9f70.png)

- **Sing Up Screen** <br/>
Falls der User sich nun dazu entscheidet, bei der Sing Up view einen neuen Useraccount anzulegen, kann er das, in dem er auf den Link `Or create a new account` klickt. Danach wird er dann zur Sing up View weitergeleitet. 
Die Sing up View ist ähndlich strukturiert wie der Login Screen. Auch ihn ihr sollte der Hauptfokus auf der eingabe der Userdaten liegen. Sie wurde ausserdem noch um 2 weitere Felder erweitert. Nämlich umd die Eingabe von der `Email Addresse` und um die erneute Eingabe vom `passwort`. Falls der User sich nun allerdings denoch dazu entscheidet, dass er sich doch lieber einloggen möchte, oder sein passwort zurücksetzen möchte kann er jederzeit über den Link `Or Login` zur Login view zurückkehren. Auch in diesem Beispiel ist die view gezielt versteckt, dammit der User sie nur dann findet, wenn er gezielt danach sucht.  
![image](https://user-images.githubusercontent.com/99135388/202233537-24debedd-cab0-40a0-9c42-ccc82a865739.png)

- **Forgot Password** <br/>
Nun kann es auch einmal vorkommen, dass der User sein password vergessen hat. Falls das der Fall ist kann er auf der Login View auf den Link `Forgot password?` klicken. Anschlissend erscheint dann ein Popup in dem er seine Email Addresse eingaeben kann. Das ganze ist gezielt als Popup designt, um dem User zu suggerieren, dass er jedereit zur Login view zurückkehren kann. <br/>
![image](https://user-images.githubusercontent.com/99135388/202235316-e76f817a-1f44-4fb2-84d3-e430da2facc9.png)
<br/>
Wenn der User nun erfolgreich seine Email addresse eingegeben hat bekommt er nach kürzester Zeit einen Resetlink auf seine Email addresse gesendet. Mithilfe von diesem Link ist der User nun in der Lage sein Password zu ändern. Diese View ist relativ simpel gehalten und beinhaltet lediglich 2 Eingabefenster und ein Button um die Eingaben zu bestätigen. Diese View braucht keinen Link, der auf eine andere View verweisst, da der User normalerweise auf diese View direckt aus einem Link drauf zugreifft. Wenn der User erfolgreich das neue Password eingegeben hat wird er direckt wieder auf die Startseite weitergeleited.

![image](https://user-images.githubusercontent.com/99135388/202239685-aed88313-0bea-4a34-a2dc-7a30f0ae4284.png)

- **Folder View**
Nachdem der User sich erfolgreich angemeldet sieht er eine übersicht über alle seine Notenblätter. Ein Notenblatt ist simpel eine ansamlung von verschiedenen Fächern. Auf der Seite werden nicht nur die eigenen Notenblätter angezeigt, sondern auch die von anderen Personen auf die man Zugriff hat.  Die einzelnen Folder könnten auch über bestimmte Acctions bearbeitet oder gelöscht werden. Auch ein neuer Folder kann über eine acction hinzugefügt werden. Da man sich auch aus der Application ausloggen möchte wird ein Logout Button auf der rechten Seite bereitgestellt. Die view sollte möglichst Minimalistisch gehalten werden, um eine einfachere Bedinung zu ermöglichen.
![image](https://user-images.githubusercontent.com/99135388/202249661-49cacfda-356c-4d90-91fa-3e13142047d4.png)

- **Noten View**
Durch einen simplen klick auf eines der Notenblätter kommt man in eine Übersicht mit allen Fächern. Das ganze ist in einer Tabelle Strukturiert. Die einzelnen Noten sind mit sogennanten `chips` dargestetllt. Durch die farbliche Hinzerlegung erhällt man schnell eine Übersicht von allen Noten. Wenn man nun eine zusätzliche Note hinzufügen möchte kann man das einfach dadurch machen, dass man mit dem Mauszeiger in das Feld mit allen Noten hinanklickt, und dann die Note eingib. Dadurch sparrt man sich den lästigen Umweg über ein eigenes Dialogfenser. <br/>
In gewissen Fällen kann es gut auch einmal vorkommen, dass die verschiedenen unterschiedlich gewichtet werden. In solchen kann man mit einem einfachen klick auf den `chip` die gewichtung anpassen. 
![image](https://user-images.githubusercontent.com/99135388/202264377-876f0b74-12ef-432e-a0e1-84600bd9c1c2.png)
