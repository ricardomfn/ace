import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="circle"

export default class extends Controller {
  static targets = ["page1", "page2"];

  transition() {
    this.page1Target.classList.add("transition-out");
    this.page2Target.classList.add("transition-in");

    setTimeout(() => {
      // Rediriger vers la page2 après une courte durée
      window.location.href = "/page2";
    }, 2000); // Modifier la durée selon vos besoins
  }
}
