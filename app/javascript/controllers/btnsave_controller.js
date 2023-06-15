import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // Écoute l'événement de pression de la touche "Entrée" dans les champs de texte
    this.element.addEventListener('keydown', event => {
      if (event.key === 13) {
        event.preventDefault();
        this.element.submit();
      }
    });
  }
}
