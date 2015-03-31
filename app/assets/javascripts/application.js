// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require custom
//= require masterslider
//= require jquery.scrollTo-1.4.3.1-min
//= require modernizr.custom
//= require modernizr.custom-loader
//= require page-transitions
//= require easing.min
//= require jquery.svg.js
//= require jquery.svganim
//= require jquery.parallax.min
//= require startup-kit
//= require menu
//= require classie
//= require selectFx
//= require classie2
//= require jquery.parallaxor
//= require classie-loader
//= require pathLoader
//= require main-loader

$('#masterslider').masterslider({
    width:1920,    // slider standard width
    height:1080,   // slider standard height
    // more options...
    controls : {
        arrows : {autohide:false},
        bullets : {}
        // more slider controls...
    }
});
