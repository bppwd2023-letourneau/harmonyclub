import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="page"
export default class extends Controller {
  static targets = ["input", "basicPage", "url", "pdf"]
  connect() {
    console.log("connected");

    this.urlTarget.hidden = true
    this.pdfTarget.hidden = true

    
  }

  toggle() {

    console.log(this.inputTarget.value);
    console.log(this.basicPageTarget);

    if (this.inputTarget.value != "Basic Page") {
      this.basicPageTarget.hidden = true
    } else if (this.inputTarget.value == "Basic Page") {
      this.basicPageTarget.hidden = false
    }

    if (this.inputTarget.value == "External URL" || this.inputTarget.value == "Internal URL") {
      this.urlTarget.hidden = false
    } 

    if (this.inputTarget.value != "PDF") {
      this.pdfTarget.hidden = true
    } else if (this.inputTarget.value == "PDF") {
      this.pdfTarget.hidden = false
    }

  }
}
