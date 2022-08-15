$('form.file_field').on('change', function () {
    var file = $(this).prop('images')[0];
    $('p').text(image.name);
});