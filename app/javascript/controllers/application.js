import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

document.addEventListener("turbo:load", setupNavbar);
document.addEventListener("DOMContentLoaded", setupNavbar);

function setupNavbar() {
  const hamburger = document.querySelector(".hamburger");
  const navLinks = document.querySelector(".nav-links");

  if (!hamburger || !navLinks) return;

  hamburger.addEventListener("click", function () {
    navLinks.classList.toggle("show");
  });

  // Ensure menu is hidden on page load to avoid weird states
  if (window.innerWidth <= 768) {
    navLinks.classList.remove("show");
  }
}







