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

const init_sections = [{
    label: "SCORE",
    level: 0,
    id: genId(),
    children: [{
        label: "SECTION",
        level: 1,
        id: genId(),
        children: [],
    }, ],
}, ]


const init_devices = [{
    label: "DEVICES",
    id: genId(),
    children: [{
        label: "GROUP",
        type: "group",
        id: genId(),
        children: [],
    }, ],
}, ]


const create_group = (name) => {
    return {
        label: name,
        id: genId(),
        type: 'group',
        children: []
    }
}


const create_device = (name) => {
    return {
        label: name,
        id: genId(),
        type: 'device',
        children: [{
            label: "I/O",
            id: genId(),
            type: 'io',
            children: []
        }, {
            label: "Parameters",
            id: genId(),
            type: 'parameter',
            children: []
        }]
    }
}


export const global_data = {
    INIT_SECTIONS: init_sections,
    INIT_DEVICES: init_devices,
    create_group: create_group,
    create_device: create_device
}