// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//

var interval = 50;
var i = 0;
var intervaler = null;

function move_figure(){
    i++;
    $('figure.stripes').css('backgroundPosition',i+'px 0');
}

$(function(){
    $('figure.stripes').each(function(){
        $(this).mouseenter(function(){
            if(!intervaler){
                intervaler = setInterval(move_figure, interval); 
            }
        });
        $(this).mouseleave(function(){
            if(intervaler){
                clearInterval(intervaler);
                intervaler = null;
            }
        });
    });
    $(document).scrollTop($('figure#fig1').position().top)
});
