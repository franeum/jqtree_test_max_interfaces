const MAIN_URI = "/api/v1";

$(() => {
    $("#spinner").spinner({
        step: 0.01,
        numberFormat: "n",
    });

    $("#culture").on("change", function () {
        var current = $("#spinner").spinner("value");
        Globalize.culture($(this).val());
        $("#spinner").spinner("value", current);
    });
});

$("#button_send_data").on("click", () => {
    send_data();
});

const send_data = () => {
    const preset_values = [];

    $(".pathid").each((index, item) => {
        let temp = {
            id: item.id,
            value: item.value,
            name: item.name,
        };
        preset_values.push(temp);
    });

    $.post({
        url: MAIN_URI + "/preset/tree",
        dataType: "json",
        data: {
            presets: preset_values,
        },
    });
};
