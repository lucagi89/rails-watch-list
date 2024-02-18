// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"
import "@popperjs/core"

document.addEventListener("DOMContentLoaded", function() {
  document.querySelectorAll(".destroy-link").forEach(function(link) {
    link.addEventListener("click", function(event) {
      event.preventDefault(); // Prevent the default click behavior
    });
  });
});
