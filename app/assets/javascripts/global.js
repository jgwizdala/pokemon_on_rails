


// Get client screen and browser measurements

screenWidth = screen.width;
screenHeight = screen.height;
browserWidth = $(window).width();
browserHeight = $(window).height();

$.ajax({
    type:       'GET',
    url:        $(location).attr('href'),
    dataType:   'script',
    data:     { screen_width:    screenWidth,
                screen_height:   screenHeight,
                browser_width:   browserWidth,
                browser_height:  browserHeight
    },
    success: function(data) {
      alert(data);
    } 
});