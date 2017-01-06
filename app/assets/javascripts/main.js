"use strict";

//CONFIGURATION
var isSticky = true; // true - on sticky menu, false - off sticky menu


$(document).ready(function(){
    // Menu action
    $(".menu-tougle").on("click", function(){
        $("html").css('height', $(".menu-sidebar").css('height'));
        $("body").css('height', $(".menu-sidebar").css('height'));
        $("html").css('overflowY', "hidden");
        $(".menu-sidebar").addClass('open');
        $(".menu-sidebar-disable").addClass('menu-sidebar-open');

    });

    // Menu close action
    $(".exit").on("click", function(){
        if($(".menu-sidebar").hasClass('open')) {
            $(".menu-sidebar").removeClass('open');
            $(".menu-sidebar-disable").removeClass('menu-sidebar-open');
            $("html").css('height', "auto");
            $("body").css('height', "auto");
            $("html").css('overflowY', "auto");
        }
    });

    //Sticky menu
    if (isSticky) {
        var  menu = $("#menu"),
        mns = "main-nav-scrolled";
        $(window).scroll(function() {
            var hdr = $('.header').height();
            if( $(this).scrollTop() > hdr ) {
                menu.addClass(mns);
                $('.header').css('padding-bottom', menu.height() + "px");
            } else {
                menu.removeClass(mns);
                $('.header').css('padding-bottom', '0');
            }
        });
    }

    //Slider setting up
    $('.carousel-default').owlCarousel({
        items: 1,
        navigation: true,
        slideSpeed: 800,
        paginationSpeed : 800,
        autoPlay: true,
        singleItem:true
    });

    //Responsive slider settings
    $('.carousel-default').owlCarousel({
        items: 1
    });
    $('.carousel-3-items').owlCarousel({
        items: 3
    });
});