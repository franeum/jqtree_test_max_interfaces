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
    Max.getDict("presets")
        .then((data) => {
            Max.post(data);
            let new_idx = 0;
            if (data.indexes) {
                let idx_length = data.indexes.length;
                new_idx = data.indexes[idx_length - 1] + 1;
                data.indexes.push(new_idx);
            } else {
                data.indexes = [new_idx];
            }

            data[new_idx] = req.presets;

            Max.setDict("presets", data)
                .then((d) => {
                    res.send("ok");
                })
                .catch((err) => {
                    res.send(err);
                });
        })
        .catch((err) => {
            res.send(err);
        });
};
