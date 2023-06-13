import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-hide-display"
export default class extends Controller {
  static targets = ["keyword", "advanced", "close"]

  connect() {
  }

  displayAdvancedSearch(event) {
    event.preventDefault()
    this.keywordTarget.classList.add("d-none")
    this.advancedTarget.classList.remove("d-none")
    this.closeTarget.classList.remove("d-none")
  }

  displayKeywordSearch(event) {
    event.preventDefault()
    this.keywordTarget.classList.remove("d-none")
    this.advancedTarget.classList.add("d-none")
    this.closeTarget.classList.add("d-none")
  }
}
