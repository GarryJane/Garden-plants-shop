function prev(button) {
    var gallery = button.parentNode,
        currentIndex = 0,
        childCount = 0;
    gallery.childNodes.forEach(function(child) {
        if (child.nodeType == 3) {
            return;
        }
        if (child.getAttribute('class').indexOf('gallery__slide') !== -1) {
            if (child.getAttribute('class').indexOf('gallery__slide_active') !== -1) {
                currentIndex = childCount;
            }
            child.setAttribute('class', 'gallery__slide');
            childCount++;
        }
    });

    var nextIndex = currentIndex == 0 ? childCount-1 : currentIndex-1;
    currentIndex = 0;

    gallery.childNodes.forEach(function(child) {
        if (child.nodeType == 3) {
            return;
        }
        if (child.getAttribute('class').indexOf('gallery__slide') !== -1) {

            if (currentIndex == nextIndex) {
                child.setAttribute('class', 'gallery__slide gallery__slide_active');
            }
            currentIndex++;
        }
    });
}

function next(button) {
    var gallery = button.parentNode,
        currentIndex = 0,
        childCount = 0;
    gallery.childNodes.forEach(function(child) {
        if (child.nodeType == 3) {
            return;
        }
        if (child.getAttribute('class').indexOf('gallery__slide') !== -1) {
            if (child.getAttribute('class').indexOf('gallery__slide_active') !== -1) {
                currentIndex = childCount;
            }
            child.setAttribute('class', 'gallery__slide');
            childCount++;
        }
    });

    var nextIndex = currentIndex == childCount-1 ? 0 : currentIndex+1;
    currentIndex = 0;

    gallery.childNodes.forEach(function(child) {
        if (child.nodeType == 3) {
            return;
        }
        if (child.getAttribute('class').indexOf('gallery__slide') !== -1) {

            if (currentIndex == nextIndex) {
                child.setAttribute('class', 'gallery__slide gallery__slide_active');
            }
            currentIndex++;
        }
    });
}