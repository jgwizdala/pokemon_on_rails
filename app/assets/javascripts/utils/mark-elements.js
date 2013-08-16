
$(document).ready(function() {
  
  var isEnabled = true;
    
  $('*').each(function () {
    var className = this.className;
    var idName = this.id;
    var spacer = "";
    var hasClass = false;
    
    if (className != "undefined" && className != "" && className != null) {
      className = " ." + className;
      hasClass = true;
    } else {
      className = "";
    }
    
    if (idName != "undefined" && idName != "" && idName != null) {
      idName = " #" + idName;
      if (hasClass) {
        spacer = " "
      }
    } else {
      idName = "";
    }
    
    $(this).addClass('mark-shadow');
    $(this).prepend("<span style='color:red;font-family:sans-serif;' class='mark'>" + idName +  spacer + className + "</span>");
    $(this).append("<span style='color:blue;font-family:sans-serif;' class='mark'>" + "&lt;/&gt; " + "</span>");
  });
  
  $(document).keydown(function(event) {
    if (event.which == 79) {
      doEnable();
    }
  });
  
  function doEnable() {
    if (isEnabled) {
      $('.mark').css('display', 'none');
      $('hr').css('borderBottomColor', 'transparent');
      $('*').removeClass('mark-shadow');
      isEnabled = false;
    } else {
      $('.mark').css('display', 'inline');
      $('hr').css('borderBottomColor', 'red');
      $('*').addClass('mark-shadow');
      isEnabled = true;
    }
  } 
  
  doEnable();
});