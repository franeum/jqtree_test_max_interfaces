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

const init_sections = [
    {
        label: "SCORE",
        level: 0,
        id: genId(),
        children: [
            {
                label: "SECTION",
                id: genId(),
                children: [],
            },
        ],
    },
];

const init_devices = [
    {
        label: "DEVICES",
        id: genId(),
        type: "main",
        children: [
            {
                label: "GROUP",
                type: "group",
                id: genId(),
                children: [],
            },
        ],
    },
];

const create_group = (name) => {
    return {
        label: name,
        id: genId(),
        type: "group",
        children: [],
    };
};

const create_parameter = (name, id) => {
    return {
        label: name,
        id: genId(),
        type: "parameter_name",
        children: [
            /*{
                       label: "0",
                       id: id,
                       value: 0,
                       type: 'parameter_value'
                   }*/
        ],
    };
};

const create_device = (name) => {
    return {
        label: name,
        id: genId(),
        type: "device",
        children: [
            {
                label: "I/O",
                id: genId(),
                type: "io",
                children: [
                    {
                        label: "input",
                        id: genId(),
                        type: "input",
                        children: [
                            {
                                label: "0",
                                id: genId(),
                                type: "input_value",
                            },
                        ],
                    },
                    {
                        label: "output",
                        id: genId(),
                        type: "output",
                        children: [
                            {
                                label: "0",
                                id: genId(),
                                type: "output_value",
                            },
                        ],
                    },
                ],
            },
            {
                label: "Parameters",
                id: genId(),
                type: "parameter",
                children: [
                    {
                        label: "param_1",
                        id: genId(),
                        type: "parameter_name",
                        children: [
                            /*{
                                        label: "0",
                                        value: 0,
                                        id: genId(),
                                        type: 'parameter_value'
                                    }*/
                        ],
                    },
                ],
            },
        ],
    };
};

export const entity = {
    INIT_SECTIONS: init_sections,
    INIT_DEVICES: init_devices,
    create_group: create_group,
    create_device: create_device,
    create_parameter: create_parameter,
};
