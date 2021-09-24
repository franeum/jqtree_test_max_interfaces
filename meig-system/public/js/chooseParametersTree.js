// GLOBAL VARIABLES

import { entity } from "./entities.js";

const MAIN_URI = "/api/v1";

// GLOBAL EVENTS

$(document).ready(() => {
    $("#button_send_data").on("click", () => {
        send_data();
    });
});

// CREATE TREE

$(() => {
    $("#tree1").tree({
        dataUrl: MAIN_URI + "/chooseparameters/checktree",
        dragAndDrop: false,
        autoOpen: 0,
        selectable: false,
        slide: false,
        useContextMenu: true,
        onCanSelectNode: function (node) {
            if (node.children.length == 0) {
                // Nodes without children can be selected
                return true;
            } else {
                // Nodes with children cannot be selected
                return false;
            }
        },
    });
});

// EVENT HANDLERS

$("#tree1").on("tree.click", (e) => {
    // Disable single selection
    e.preventDefault();
    console.log(e.node);
    if (e.node.type == "parameter_name") {
        const selected_node = e.node;

        if ($("#tree1").tree("isNodeSelected", selected_node)) {
            $("#tree1").tree("removeFromSelection", selected_node);
            selected_node.is_selected = false;
        } else {
            $("#tree1").tree("addToSelection", selected_node);
            selected_node.is_selected = true;
        }
    }
});

/*
const get_tree = () => {
    const whole_tree = $('#tree1').tree('toJson')

    $.post({
        url: MAIN_URI + '/device/tree',
        dataType: 'json',
        data: {
            devices: whole_tree
        }
    })
}
*/

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

const reverse_path = (node) => {
    let path = [];
    prev(node, path);

    path = path.reverse().join("/");
    return path;
};

const prev = (node, arr) => {
    const current = node.parent;
    if (current.type != "main") {
        console.log(current.name);
        arr.push(current.name);
        prev(current, arr);
    }
};
