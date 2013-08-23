// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {
  $('body, header').noisy ({
      'intensity' : 1,
      'size' : '30',
      'opacity' : 0.044,
      'fallback' : '',
      'monochrome' : false
  }).css('background-color', '#2b2c2e');

  $('.projects').noisy ({
      'intensity' : 1,
      'size' : '30',
      'opacity' : 0.03,
      'fallback' : '',
      'monochrome' : false
  }).css('background-color', '#272729');

});

function toClass (e) {
  return '.' + e;
}
