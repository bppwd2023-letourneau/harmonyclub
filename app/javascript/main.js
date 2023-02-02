let height = screen.height;
let container = document.getElementById('pagecon');
let pageHeight = container.offsetHeight;

console.log(height);
console.log(pageHeight);

if (pageHeight < height) {
    container.classList.add('vh-100');
}

if (pageHeight > height) {
    if (container.classList.contains('vh-100')) {
        container.classList.remove('vh-100');
    }
}
