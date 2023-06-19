import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="multi-form"
export default class extends Controller {

  static targets = ["link","first","ligne","wrap","image","nom"]


  hideLogo() {
    this.linkTarget.style.display = "none";
    this.firstTarget.style.color = "green";
    this.wrapTarget.classList.add("wrapper-green");
    this.ligneTarget.style.color = "green";
    this.imageTargets.forEach((image) => {
      image.style.display = "none";
    });
  }

  // nom(){
  //   this.nomTarget.classList.remove("d-none");
  // }

}
