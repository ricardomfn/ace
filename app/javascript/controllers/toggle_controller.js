import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content"];

  connect() {
    this.hideContent();
  }

  toggle() {
    if (this.isContentHidden()) {
      this.showContent();
    } else {
      this.hideContent();
    }
  }

  isContentHidden() {
    return !this.contentTarget.classList.contains("expanded");
  }

  hideContent() {
    this.contentTarget.classList.remove("expanded");
    this.contentTarget.classList.add("collapsed");
  }

  showContent() {
    this.contentTarget.classList.remove("collapsed");
    this.contentTarget.classList.add("expanded");
  }
}
