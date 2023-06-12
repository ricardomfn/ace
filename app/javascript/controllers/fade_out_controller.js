import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["change"];

  connect() {
    setTimeout(() => {
      this.changeTarget.classList.remove('fade-in');
      this.changeTarget.classList.add('fade-out');
    }, 700);
  }
}
