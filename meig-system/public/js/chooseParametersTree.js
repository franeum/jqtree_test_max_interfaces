// GLOBAL VARIABLES

import {
    entity
} from './entities.js'

const MAIN_URI = "/api/v1"


// GLOBAL EVENTS


$(document).ready(() => {
    $('#button_load_data').on('click', () => {
        load_data()
    })

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

    $('#button_find_parameters').click(() => {
        findNodesByType('io')
    })

    $('#button_reverse_path').click(() => {
        reverse_path()
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
        dataUrl: MAIN_URI + '/chooseparameters/checktree',
        dragAndDrop: false,
        autoOpen: 0,
        selectable: false,
        slide: false,
        useContextMenu: true,
        onCanSelectNode: function(node) {
            if (node.children.length == 0) {
                // Nodes without children can be selected
                return true;
            } else {
                // Nodes with children cannot be selected
                return false;
            }
        }
    })
})


// EVENT HANDLERS


$('#tree1').on('tree.click', function(e) {
    // Disable single selection
    e.preventDefault();
    if (e.node.type == 'parameter_name') {
        const selected_node = e.node;

        if ($('#tree1').tree('isNodeSelected', selected_node)) {
            $('#tree1').tree('removeFromSelection', selected_node);
        } else {
            $('#tree1').tree('addToSelection', selected_node);
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


const reverse_path = (node) => {
    let path = []
    prev(node, path)

    path = path.reverse().join('/')
    return path
}


const prev = (node, arr) => {
    const current = node.parent
    if (current.type != 'main') {
        console.log(current.name)
        arr.push(current.name)
        prev(current, arr)
    }
}