### VARIABLES ###

JC = javac
CLASSDIR = Class/
JCFLAGS = -encoding UTF-8 -implicit:none 
JVM = java

### REGLES ESSENTIELLES ###

Demineur.class : Demineur.java Fenetre.class FenetreListener.class
	@${JC} ${JCFLAGS} Demineur.java

Fenetre.class : Fenetre.java Accueil.class JPanelDemineur.class CaseListener.class BoutonListener.class Jeu.class Fichier.class 
	@${JC} ${JCFLAGS} Fenetre.java

CaseListener.class : CaseListener.java Fenetre.java Jeu.class
	@${JC} ${JCFLAGS} CaseListener.java 

BoutonListener.class : BoutonListener.java Fenetre.java
	@${JC} ${JCFLAGS} BoutonListener.java
	
Jeu.class : Jeu.java Case.class
	@${JC} ${JCFLAGS} Jeu.java

Case.class : Case.java Fichier.class
	@${JC} ${JCFLAGS} Case.java

Fichier.class : Fichier.java Jeu.java
	@${JC} ${JCFLAGS} Fichier.java

FenetreListener.class : FenetreListener.java
	@${JC} ${JCFLAGS} FenetreListener.java
		
Accueil.class : Accueil.java
	@${JC} ${JCFLAGS} Accueil.java

JPanelDemineur.class : JPanelDemineur.java
	@${JC} ${JCFLAGS} JPanelDemineur.java



### REGLES OPTIONNELLES ###

run : Demineur.class
	@${JVM} Demineur
clean :
	-rm -f *.class

### BUTS FACTICES ###

.PHONY : run clean mrproper

### FIN ###