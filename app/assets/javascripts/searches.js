

$(document).on('ready page:load', function() {
  

  $('#search-form').submit(function(event) {
    event.preventDefault();
    var searchValue = $('#search').val();

  	$.getScript('/searches?search=' + searchValue);
	});

  	
  	$(window).on('scroll', function() {
     if ($(window).scrollTop() > $(document).height() - $(window).height() - 50) {
       var href = $('.pagination.next.a').attr('height')

       $.getScript(href);
     }
   });



});