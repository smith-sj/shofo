// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("trix")
require("@rails/actiontext")

window.Flickity = require('flickity')

window.addEventListener( "turbolinks:load", function() {
    new Flickity( '.carousel', {"wrapAround": true});
    });

window.addEventListener( "turbolinks:load", function() {
    const checkbox = document.getElementById('menyAvPaa');
    const menu = document.getElementById('meny');
    const body = document.body;
    
    checkbox.addEventListener('click', function handleClick() {
      if (checkbox.checked) {
        menu.style.transform = 'translateX(0rem)';
        body.style.overflow = 'hidden';
      } else {
        menu.style.transform = 'translateX(-100%)';
        body.style.overflow = 'visible';
      }
    });    


    });