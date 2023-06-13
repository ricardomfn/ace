import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="test"
export default class extends Controller {
  connect() {
    console.log("hello")
  }

  close () {
    this.element.classList.add("d-none");
  }
}
