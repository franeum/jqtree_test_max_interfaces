// GLOBAL VARIABLES

import { entity } from "./entities.js";

const MAIN_URI = "/api/v1";
const data = entity.INIT_DEVICES;
let selected_node = undefined;

// GLOBAL EVENTS

$(() => {
    $("#button_load_data").click(() => {
        load_data();
    });

    $("#button_add_group").click(() => {
        add_group();
    });

    $("#button_add_device").click(() => {
        add_device();
    });

    $("#button_add_parameter").click(() => {
        add_parameter();
    });

    $("#button_get_tree").click(() => {
        get_tree();
    });

    $("#button_find_parameters").click(() => {
        findNodesByType("io");
    });

    $("#button_reverse_path").click(() => {
        reverse_path();
    });
});

const genId = () => {
    var timestamp = ((new Date().getTime() / 1000) | 0).toString(16);
    return (
        timestamp +
        "xxxxxxxxxxxxxxxx"
            .replace(/[x]/g, function () {
                return ((Math.random() * 16) | 0).toString(16);
            })
            .toLowerCase()
    );
};

const get_main_node = () => {
    const node = $("#tree1").tree("getNodeByCallback", (node) => {
        return node.getLevel() == 1;
    });
    console.log(node.name);
    return node;
};

// CREATE TREE

$(() => {
    create_init_tree();
});

const create_init_tree = () => {
    $("#tree1").tree({
        data: data,
        dragAndDrop: true,
        autoOpen: 0,
        selectable: true,
        slide: false,
        useContextMenu: true,
        onCreateLi: function (node, $li) {
            if (node.type) {
                const $title = $li.find(".jqtree-element");
                $title.addClass(node.type);
            }

            if (node.type == "parameter_value") {
                const $title = $li.find(".jqtree-element");
                $title.prop("contenteditable", "true");
            }
        },
    });
};

// TREE EVENTS

$("#tree1").on("tree.dblclick", (event) => {
    // event.node is the clicked node
    console.log("double click", event.node);
    if (event.node.type == "parameter_value") {
        let value = prompt("value", event.node.name);
        if (value) {
            const node = event.node;
            node.value = parseFloat(value);
            $("#tree1").tree("updateNode", event.node, value);
            $("#tree1").tree("updateNode", event.node, node);
        }
    } else {
        let name = prompt(`${event.node.type} name`, event.node.name);
        if (name) $("#tree1").tree("updateNode", event.node, name);
    }
});

$("#tree1").on("tree.select", (event) => {
    selected_node = event.node;
    console.log(selected_node);
});

const load_data = () => {
    $("#tree1").tree(
        "loadDataFromUrl",
        MAIN_URI + "/device/loadtree",
        null,
        () => {
            const root = $("#tree1").tree("getTree");
            if (root.type != undefined) {
                console.log(root.type);
                $("#tree1").tree("loadData", data);
            }
        }
    );
};

$("#tree1").on("tree.move", () => {
    get_tree();
});

// ADDING NODES

const add_group = () => {
    let name = prompt("Group name");
    const main_node = get_main_node();

    if (name) {
        if (!selected_node || selected_node === main_node)
            selected_node = main_node;

        name = name.toLowerCase();

        const append = $("#tree1").tree(
            "appendNode",
            entity.create_group(name),
            selected_node
        );

        $("#tree1").tree("openNode", selected_node);

        get_tree();
    }
};

const add_device = () => {
    let name = prompt("Device name");

    if (name) {
        if (selected_node && selected_node.type == "group") {
            name = name.toLocaleLowerCase();
            $("#tree1").tree(
                "appendNode",
                entity.create_device(name),
                selected_node
            );

            $("#tree1").tree("openNode", selected_node);

            get_tree();
        }
    }
};

const add_parameter = () => {
    let name = prompt("Parameter name");
    const id = genId();

    if (name) {
        if (selected_node && selected_node.type == "parameter") {
            name = name = name.toLocaleLowerCase();

            //const path = reverse_path(selected_node);

            $("#tree1").tree(
                "appendNode",
                entity.create_parameter(name, id),
                selected_node
            );

            get_tree();
        }
    }
};

const get_tree = () => {
    const whole_tree = $("#tree1").tree("toJson");

    $.post({
        url: MAIN_URI + "/device/tree",
        dataType: "json",
        data: {
            devices: whole_tree,
        },
    });
};

$("#tree1").jqTreeContextMenu(
    () => {
        return $("#myMenu1");
    },
    {
        edit: function (node) {
            alert("Edit node: " + node.name);
        },
        delete: function (node) {
            alert("Delete node: " + node.name);
        },
        add: function (node) {
            alert("Add node: " + node.name);
        },
    }
);

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
    console.log(nodes);
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
