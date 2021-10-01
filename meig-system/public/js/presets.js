const MAIN_URI = "/api/v1";

$(document).ready(() => {
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

/*
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
*/

// CREATE TREE

$(() => {
    $("#tree1").tree({
        dataUrl: () => {
            return {
                url: MAIN_URI + "/params/list",
                async: false,
            };
        },
        dragAndDrop: false,
        autoOpen: 0,
        slide: false,
        useContextMenu: false,
        onCreateLi: function (node, $li) {
            const $title = $li.find(".jqtree-element");
            $title.addClass(node.type);
            if (node.type == "parameter_name") {
                const txt = $li.find("span").text();
                $li.find("span").html(`
                    <table>
                        <tr>
                            <td>${txt}</td>
                            <td>
                                <input id=${node.id} value='0.0' class='pathid' name=${node.name}>
                            </td>
                        </tr>
                    </table>`);
            }
        },
        selectable: false,
    });

    $(".pathid").spinner({
        step: 0.01,
        numberFormat: "n",
    });
});

const findNodesByType = (type) => {
    let nodes = [];

    $("#tree1").tree("getNodeByCallback", function (node) {
        if (node.type == type) {
            // Node is found; return true
            nodes.push(node);
            return false;
        } else {
            // Node not found; continue searching
            return false;
        }
    });

    return nodes;
};

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
        data: { presets: JSON.stringify(preset_values) },
    });
};

/*
const send_data = () => {
    const root = $("#tree1").tree("toJson");

    $.post({
        url: MAIN_URI + "/chooseparameters/tree",
        dataType: "json",
        data: {
            devices: root,
        },
    });
};
*/

/*
const reverse_path = (node) => {
    let path = [];
    prev(node, path);

    path = path.reverse().join("/");
    return path;
};

const prev = (node, arr) => {
    const current = node.parent;
    if (current.type != "main") {
        //console.log(current.name);
        arr.push(current.name);
        prev(current, arr);
    }
};
*/
