// GLOBAL VARIABLES

import { entity } from "./entities.js";

const MAIN_URI = "/api/v1";

// GLOBAL EVENTS

$(() => {
    $("#button_send_data").on("click", () => {
        send_data();
    });
});

// CREATE TREE

$(() => {
    $("#tree1").tree({
        dataUrl: MAIN_URI + "/params/list",
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

// TREE EVENTS

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

const send_data = () => {
    const root = $("#tree1").tree("toJson");
    const _id = $("#id_container").text();
    console.log(_id);

    $.post({
        url: MAIN_URI + "/params/list",
        dataType: "json",
        data: {
            devices: root,
            container_id: _id,
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
