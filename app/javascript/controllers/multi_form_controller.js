import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="multi-form"
export default class extends Controller {

  static targets = ["link","first","ligne","wrap","image","nom","naming","suivant"]


  hideLogo() {
    this.linkTarget.style.display = "none";
    this.firstTarget.style.color = "green";
    this.wrapTarget.classList.add("wrapper-green");
    this.ligneTarget.style.color = "green";
    this.nomTarget.classList.remove("hide");
    this.namingTarget.classList.remove("hide");
    this.imageTargets.forEach((image) => {
      image.style.display = "none";
    });
    this.suivantTarget.classList.add("d-none");
  }


  handleImage(){
    this.suivantTarget.removeAttribute('disabled');
  }

  // disable() {
  //   this.element.setAttribute("disabled", "");
  // }



}
