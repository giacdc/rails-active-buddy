import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-map-list"
export default class extends Controller {
  static targets = ["list", "map"]

  connect() {
    console.log("hola")
    console.dir(this)
  }

  displayMap(event) {
    event.preventDefault()
    this.listTarget.classList.add("d-none")
    this.mapTarget.classList.remove("d-none")
  }

  displayList(event) {
    event.preventDefault()
    this.mapTarget.classList.add("d-none")
    this.listTarget.classList.remove("d-none")
  }
}
