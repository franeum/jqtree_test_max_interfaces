$(() => {
    $("#spinner").spinner({
        step: 0.01,
        numberFormat: "n"
    });

    $("#culture").on("change", function() {
        var current = $("#spinner").spinner("value");
        Globalize.culture($(this).val());
        $("#spinner").spinner("value", current);
    });
});

$('#button_send_data').on('click', () => {
    send_data()
})

const send_data = () => {
    const value = $('#spinner').val()
    console.log(typeof(value))
}