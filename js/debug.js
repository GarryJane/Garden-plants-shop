let win = $(window);
$(".footer").text(win.width())
win.on('resize', () => {
    $(".footer").text(win.width());
});