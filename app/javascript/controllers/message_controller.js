import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["message", "notification"]

  connect() {
    this.hideAllContent()
    this.showMessage()
    console.log("hello")
  }

  showMessage() {
    this.hideAllContent()
    this.messageTarget.style.display = "block"
  }

  showNotification() {
    this.hideAllContent()
    this.notificationTarget.style.display = "block"
  }

  hideAllContent() {
    this.messageTarget.style.display = "none"
    this.notificationTarget.style.display = "none"
  }
}
