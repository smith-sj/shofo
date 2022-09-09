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

//  FOR FLICKITY CAROUSELS

window.Flickity = require('flickity')

// friction added to slow slider down, dragThreshold added so it's easier to scroll page 
// instead of accidently scrolling carousel... for touchscreens.
// Has to initiate on Turbolink load otherwise it doesn't initiate fast enough and certain
// properties don't load properly.

function initiateFlickity() {
    if (document.querySelector('.carousel')) {
        new Flickity( '.carousel', {"wrapAround": true, 'friction': 0.6, 'dragThreshold': 10});}
}

document.addEventListener( "turbolinks:load", initiateFlickity)
