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


export const global_data = {
    INIT_SECTIONS: init_sections
}