const MAIN_URI = "/api/v1";

$(() => {
    $(".pathid").spinner({
        step: 0.01,
        numberFormat: "n",
    });

    $("#culture").on("change", function () {
        var current = $(".pathid").spinner("value");
        Globalize.culture($(this).val());
        $(".pathid").spinner("value", current);
    });
});

$("#button_send_data").on("click", () => {
    send_data();
});

const send_data = () => {
    const preset_values = {};

    $(".pathid").each((index, item) => {
        preset_values[item.id] = {
            value: item.value,
            name: item.name,
        };
    });

    console.log({ presets: preset_values });

    $.post({
        url: MAIN_URI + "/preset/tree",
        dataType: "json",
        data: { presets: preset_values },
    });
};
