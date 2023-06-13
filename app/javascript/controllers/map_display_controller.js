import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["bloc", "carte"]

  connect() {
    console.log("display_map")
    this.carteTarget.classList.add("d-none");
  }

  toggleDivs(event) {
    event.preventDefault();

    this.blocTarget.classList.toggle("fade")
    this.carteTarget.classList.toggle("fade")

    setTimeout(() => {
      this.blocTarget.classList.toggle("d-none")
      this.carteTarget.classList.toggle("d-none")
    }, 300);

    setTimeout(() => {
      this.blocTarget.classList.toggle("show")
      this.carteTarget.classList.toggle("show")
    }, 400);
  }
}
