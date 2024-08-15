import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableForm", "togglableButton"]
  connect() {
    this.originalText = this.togglableButtonTarget.textContent;
  }
  fire() {
    this.togglableFormTarget.classList.toggle("d-none");
    this.togglableButtonTarget.scrollIntoView({ behavior: 'smooth'})
    if (this.togglableButtonTarget.textContent === this.originalText) {
      this.togglableButtonTarget.textContent = "Hide";
    } else {
      this.togglableButtonTarget.textContent = this.originalText;
     }
  }
}
