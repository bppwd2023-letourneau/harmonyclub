var height = screen.height;
var width = screen.width;
var container = document.getElementById('pagecon');
var pageHeight = container.offsetHeight;
var w = document.documentElement.clientWidth;
var h = document.documentElement.clientHeight;

if (pageHeight < height) {
        container.classList.add('vh-100');
    }

    if (w < 750) {
        container.classList.remove('vh-100');
    }

    if (pageHeight > height) {
    if (container.classList.contains('vh-100')) {
        container.classList.remove('vh-100');
        }
    }     


window.addEventListener('resize', function() {

    console.log("In Event Listener");

    var height = screen.height;
    var width = screen.width;
    var container = document.getElementById('pagecon');
    var pageHeight = container.offsetHeight;

    var w = document.documentElement.clientWidth;
    var h = document.documentElement.clientHeight;

    console.log(h);
    console.log(w);


    if (pageHeight < height) {
        container.classList.add('vh-100');
    }

    if (w < 750) {
        container.classList.remove('vh-100');
    }

    if (pageHeight > height) {
    if (container.classList.contains('vh-100')) {
        container.classList.remove('vh-100');
        }
    }     
});
