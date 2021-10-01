// section
const Max = require("max-api");
const Tree = require("tree-model");
const tree = new Tree();
const utils = require("./utils");

/*************************************************************
 * GET PRESET
 ************************************************************/

exports.get_preset = (req, res) => {
    Max.getDict("devices")
        .then((data) => {
            const root = tree.parse(data);
            root.all((node) => {
                if (node.model.type == "parameter_name")
                    node.model.path = utils.findPathName(node);
            });
            const nodes = utils.findAllByType(root, "parameter_name");
            res.render("presets", {
                presets: nodes,
            });
        })
        .catch((err) => {
            res.send(err);
        });
};

/*************************************************************
 * POST PRESET
 ************************************************************/

exports.post_preset = (req, res) => {
    //const { presets } = req.body;
    Max.post(req.body.presets);

    /*
    Max.getDict("presets")
        .then((data) => {
            Max.post(data);
        })
        .catch((err) => {
            Max.post("errore fuori");
            res.send(err);
        });

    Max.setDict("presets", presets)
        .then(() => {
            res.send("ok");
        })
        .catch((err) => {
            Max.post("errore dentro");
            res.send(err);
        });
        */
    res.send("ok");
};
