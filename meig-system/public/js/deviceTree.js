// GLOBAL VARIABLES

import { entity } from './entities.js'

const MAIN_URI = "/api/v1"
const data = entity.INIT_DEVICES
let selected_node = undefined


// GLOBAL EVENTS


$(document).ready(() => {
    $('#button_add_group').click(() => {
        add_group()
    })

    $('#button_add_device').click(() => {
        add_device()
    })

    $('#button_add_parameter').click(() => {
        add_parameter()
    })

    $('#button_get_tree').click(() => {
        get_tree()
    })
})

const genId = () => {
    var timestamp = ((new Date().getTime() / 1000) | 0).toString(16)
    return (
        timestamp +
        "xxxxxxxxxxxxxxxx".replace(/[x]/g, function() {
            return ((Math.random() * 16) | 0).toString(16)
        })
        .toLowerCase()
    )
}


const capitalize = string => {
    const lower = string.toLowerCase()
    return string.charAt(0).toUpperCase() + lower.slice(1)
}


const get_main_node = () => {
    const node = $('#tree1').tree(
        'getNodeByCallback', node => {
            return node.getLevel() == 1
        }
    )
    console.log(node.name)
    return node
}


// CREATE TREE

$(() => {
    $("#tree1").tree({
        data: data,
        dragAndDrop: true,
        autoOpen: 0,
        selectable: true,
        slide: false,
        useContextMenu: true,
        onCreateLi: function(node, $li) {
            if (node.type) {
                var $title = $li.find('.jqtree-element')
                $title.addClass(node.type)
            }
        }
    })
})


// EVENT HANDLERS


$("body").on('click',
    console.log("clicked")
)

$("#tree1").on("tree.dblclick", (event) => {
    // event.node is the clicked node
    console.log("double click", event.node)

    let name = prompt("node name", event.node.name)
    if (name)
        $("#tree1").tree("updateNode", event.node, name)
})


$("#tree1").on("tree.select", (event) => {
    selected_node = event.node
    console.log(selected_node)
})


const add_group = () => {
    let name = prompt("Group name")
    const main_node = get_main_node()

    if (name) {
        if (!selected_node || (selected_node === main_node))
            selected_node = main_node

        name = name.toUpperCase()

        $("#tree1").tree(
            'appendNode',
            entity.create_group(name),
            selected_node
        )

        $("#tree1").tree('openNode', selected_node)
    }
}


const add_device = () => {
    let name = prompt("Device name")

    if (name) {
        if (selected_node && (selected_node.type == 'group')) {
            name = capitalize(name)
            $("#tree1").tree(
                'appendNode',
                entity.create_device(name),
                selected_node
            )

            $("#tree1").tree('openNode', selected_node)
        }
    }
}


const add_parameter = () => {
    let name = prompt("Device name")

    if (name) {
        if (selected_node && (selected_node.type == 'parameter')) {
            name = capitalize(name)
            $("#tree1").tree(
                'appendNode',
                entity.create_parameter(name),
                selected_node
            )

            $("#tree1").tree('openNode', selected_node)
        }
    }
}


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


$('#tree1').jqTreeContextMenu((node) => {
    //return node.name.startsWith('node') ? $('#myMenu1') : $('#myMenu2')
    return $('#myMenu1')
}, {
    "edit": function(node) { alert('Edit node: ' + node.name) },
    "delete": function(node) { alert('Delete node: ' + node.name) },
    "add": function(node) { alert('Add node: ' + node.name) }
})