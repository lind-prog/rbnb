import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      enableTime: true,          // Activer la sélection de l'heure si nécessaire
      dateFormat: "Y-m-d H:i",   // Format de la date et de l'heure
      minDate: "today",
    })
  }
}
