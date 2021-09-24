//  parameters
const utils = require("./utils");
const Max = require("max-api");
const TreeModel = require("tree-model");
const tree = new TreeModel();

/*************************************************************
 * GET PAGE
 ************************************************************/

exports.get_page = (req, res) => {
    res.render("chooseparameters");
};

/*************************************************************
 * GET TREE
 ************************************************************/

exports.get_tree = (req, res) => {
    Max.getDict("devices")
        .then((data) => {
            const root = tree.parse(data);

            root.all().forEach((node) => {
                if (node.model.type == "io") node.drop();
            });

            root.all().forEach((node) => {
                if (node.model.type == "device")
                    remove_parameter_container(node);
            });

            root.all().forEach((node) => {
                node.model.is_selected = false;
            });

            res.json([root.model]);
        })
        .catch((err) => {
            res.json(err);
        });
};

// utilities

const remove_parameter_container = (node) => {
    const children = node.model.children[0].children;
    node.model.children = children;
};

/*************************************************************
 * POST TREE
 ************************************************************/

exports.post_tree = (req, res) => {
    const parsed = JSON.parse(req.body.devices);
    const root = tree.parse(parsed[0]);
    //const nodes = []
    root.all((node) => {
        if (node.model.type == "parameter_name")
            //node.model.path = `[ ${findPathName(node)} ]`;
            node.model.path = findPathName(node);
    });
    const nodes = utils.findAllByType(root, "parameter_name");

    const filtered = ["event_params event_params"];
    nodes.forEach((n) => {
        if (n.is_selected) filtered.push(n.path);
    });

    //Max.outlet({ paramslist: filtered });
    Max.outlet(filtered);
    res.send("ok");
};

// extract node path
const findPathName = (node) => {
    let arrPath = [];
    const purePath = node.getPath();

    purePath.map((n) => {
        arrPath.push(n.model.name);
    });

    arrPath = arrPath.slice(1);
    //arrPath.push(node.model.name)
    return arrPath.join("/");
};
