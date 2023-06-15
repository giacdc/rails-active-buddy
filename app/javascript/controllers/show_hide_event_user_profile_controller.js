import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-hide-event-user-profile"
export default class extends Controller {
  static targets = ["upcomingEventsTab", "pendingConfirmationTab", "historicalTab", "upcomingEvents", "pendingConfirmation", "historical"]

  connect() {
  }

  displayPendingConfirmation() {
    this.upcomingEventsTarget.classList.add("d-none")
    this.historicalTarget.classList.add("d-none")
    this.pendingConfirmationTarget.classList.remove("d-none")
    this.upcomingEventsTabTarget.classList.remove("tab-selected")
    this.historicalTabTarget.classList.remove("tab-selected")
    this.pendingConfirmationTabTarget.classList.add("tab-selected")
  }

  displayUpcomingEvents() {
    this.upcomingEventsTarget.classList.remove("d-none")
    this.historicalTarget.classList.add("d-none")
    this.pendingConfirmationTarget.classList.add("d-none")
    this.upcomingEventsTabTarget.classList.add("tab-selected")
    this.historicalTabTarget.classList.remove("tab-selected")
    this.pendingConfirmationTabTarget.classList.remove("tab-selected")
  }

  displayHistorical() {
    this.upcomingEventsTarget.classList.add("d-none")
    this.historicalTarget.classList.remove("d-none")
    this.pendingConfirmationTarget.classList.add("d-none")
    this.upcomingEventsTabTarget.classList.remove("tab-selected")
    this.historicalTabTarget.classList.add("tab-selected")
    this.pendingConfirmationTabTarget.classList.remove("tab-selected")
  }

}
