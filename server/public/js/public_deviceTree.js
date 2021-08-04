// GLOBAL VARIABLES

let selected_node = undefined


const genId = () => {
    var timestamp = ((new Date().getTime() / 1000) | 0).toString(16)
    return (
        timestamp +
        "xxxxxxxxxxxxxxxx"
        .replace(/[x]/g, function() {
            return ((Math.random() * 16) | 0).toString(16)
        })
        .toLowerCase()
    )
}


let data = [{
    label: "DEVICES",
    id: genId(),
    type: 'main',
    children: [{
        label: "GROUP 1",
        type: 'group',
        id: genId(),
        children: [{
            label: "DEVICE 1",
            type: 'device',
            id: genId(),
            children: [{ label: "I|O" }, { label: "Parameters" }],
        }],
    }, ],
}, ]


// CREATE TREE

$(() => {
    $("#tree1").tree({
        data: data,
        dragAndDrop: true,
        autoOpen: 0,
        selectable: true,
        slide: false,
        useContextMenu: true,
    })
})


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


const capitalize = string => {
    const lower = string.toLowerCase()
    return string.charAt(0).toUpperCase() + lower.slice(1)
}


const add_group = () => {
    let name = prompt("group name").toUpperCase()
    const score_node = get_main_node()
    console.log(score_node)

    $("#tree1").tree(
        'appendNode', {
            label: name,
            type: 'main',
            id: genId(),
            isEmptyFolder: true,
            children: [{
                label: "DEVICE",
                type: 'device',
                id: genId(),
                children: [{ label: "I|O" }, { label: "Parameters" }],
            }]
        },
        score_node
    )

    $("#tree1").tree('openNode', score_node)
}


const add_device = () => {
    let name = prompt("group name").toUpperCase()

    if (selected_node && (selected_node.type == 'group')) {
        $("#tree1").tree(
            'appendNode', {
                label: name,
                type: 'device',
                id: genId(),
                isEmptyFolder: true,
                children: [{ label: "I|O" }, { label: "Parameters" }]
            },
            selected_node
        )

        $("#tree1").tree('openNode', score_node)
    } else {
        alert("you have to select a group")
    }
}


const add_event = () => {
    let name = prompt("node name")

    if (name) {
        if (selected_node) {
            $("#tree1").tree(
                'appendNode', {
                    label: '_' + name,
                    id: genId(),
                    type: 'event',
                    children: []
                },
                selected_node
            )
        }

        $("#tree1").tree('openNode', selected_node)
    }
}


const edit_node = () => {
    if (selected_node) {
        let name = prompt("node name", selected_node.name)
        $("#tree1").tree("updateNode", selected_node, name)
    }
}


const get_tree = () => {
    const whole_tree = $('#tree1').tree('toJson')
        //const data = $.parseJSON(whole_tree)
        //console.log(data)

    $.post({
        url: '/tree/sectiontree',
        dataType: 'json',
        data: { score: whole_tree }
    })
}


$("#tree1").on("tree.contextmenu", function(event) {
    // The clicked node is 'event.node'
    var node = event.node
    alert(node.name)
})


const get_main_node = () => {
    const node = $('#tree1').tree(
            'getNodeByCallback',
            function(node) {
                if (node.type == 'main') {
                    return true
                } else {
                    return false
                }
            }
        )
        //console.log("data:", node.getData())
        //console.log("level:", node.getLevel())
    return node
}