$.FullImage = function(url, parent) {
    var img = document.createElement('div');
    
    var r = Math.floor(Math.random()*256);
    var g = Math.floor(Math.random()*256);
    var b = Math.floor(Math.random()*256);
    
    
    $(img).css({
        
        'background': 'url(' + url + ') no-repeat center center fixed',
        // 'background': getHex(r,g,b),
        'width': '100%',
        'height': '100%',
	'-webkit-background-size': 'cover',
	'-moz-background-size': 'cover',
	'-o-background-size': 'cover',
	'background-size': 'cover',
        
	'position': 'fixed',
	'top': '0',
	'left': '0',
        
        'z-index': '1'
    });
    
    $(parent).append($(img));
    
    
    return img;
}
 
 // intToHex()
 function intToHex(n){
 	n = n.toString(16);
 	// eg: #0099ff. without this check, it would output #099ff
 	if( n.length < 2) 
 		n = "0"+n; 
 	return n;
 }
 
 // getHex()
 // shorter code for outputing the whole hex value
 function getHex(r, g, b){
 	return '#'+intToHex(r)+intToHex(g)+intToHex(b); 
 }