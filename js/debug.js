let win = $(window);
$(".footer").text(`w: ${win.width()}, h: ${win.height()}`);
win.resize(() => {
    $(".footer").text(`w: ${win.width()}, h: ${win.height()}`);
});