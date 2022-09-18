import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

/**
 * La classe <code> BoutonListener </code> représente un observateur de bouton
* @author Lucas JUSTINE
*/
public class BoutonListener implements ActionListener {
   private Fenetre fenetre;
    /**
    * Initialise un controleur  
    * @param f Fenetre dans laquelle est l'Accueil
    */
   public BoutonListener(Fenetre f) {
       this.fenetre = f;
   }
   
   @Override
   public void actionPerformed(ActionEvent evenement){
        //Récupère le texte du bouton cliqué
        String b = evenement.getActionCommand();
        switch (b) {
            case "Jouer":
                fenetre.demarrerJeu();
                break;

            case "Continuer":
                fenetre.chargerSauvegarde();
                break;

            case "Sauvegarder et Quitter":
                fenetre.sauvegarderJeu();
                break;
            
            case "Accueil":
                fenetre.accueil();
                break;
                
            default :
                this.fenetre.dispose();
                break;
        }
    }
}