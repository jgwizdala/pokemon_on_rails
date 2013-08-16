
var Tooltip = function (attachTo, content, duration, delay, topPosition, leftPosition) {
    this.attachTo = attachTo;
    var position = $(this.attachTo).position();
    this.content = content || "Tooltip";
    this.topPosition = parseInt(topPosition) || parseInt(position.top) + ( parseInt($(this.attachTo).height() * 3.6));
    this.leftPosition = parseInt(leftPosition) || parseInt(position.left) + ( parseInt($(this.attachTo).width() / 36) );
    this.tweenDuration = parseFloat(duration) || 1;
    this.tweenDelay = parseFloat(delay) || 0.6;
    this.tooltipObj = 0;
    this.easeOutFired = false;
    
    this.tooltipObj = document.createElement('div')
    $(this.tooltipObj).addClass('tooltip');
    $(this.tooltipObj).html(content);
    $('body').append(this.tooltipObj);
    
    var tooltipArrow = document.createElement('div');
    $(tooltipArrow).addClass('tooltipArrow');
    $(this.tooltipObj).append(tooltipArrow);
    
    $(this.tooltipObj).css({
        'top': this.topPosition + 'px',
        'left': this.leftPosition + 'px'
    });
    
    var wtooltip = this.tooltipObj;
     
    TweenMax.to(this.tooltipObj, 0, { css:{ autoAlpha: 0 } });
    TweenMax.to(this.tooltipObj, 0.8, { css:{ autoAlpha: 1 }, ease:Expo.easeOut, onComplete:hold });
    
    function hold() {
        TweenMax.to(wtooltip, 0.8, { onComplete:easeOut });
    }
    
    $(document).mousemove(function(e){
       // $('#output-class').html(e.pageX +', '+ e.pageY);
    });
    
    function easeOut() {
        this.easeOutFired = true;
        TweenMax.to(wtooltip, 0.5, { css:{ autoAlpha: 0 }, ease:Expo.easeOut, delay:this.tweenDelay, onComplete:destroy });
    }
    
    function destroy() {
        $(this.tooltipObj).remove();
    }
};