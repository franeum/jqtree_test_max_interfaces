// device
try {
    const aMax = require("max-api");
} catch {
    console.log("server running outside Max");
}
const Max = require("max-api");

/*************************************************************
 * GET SECTION PAGE && DEFAULT_TREE
 ************************************************************/

exports.get_page_tree = (req, res) => {
    res.render("devices");
};

/*************************************************************
 * POST TREE
 ************************************************************/

exports.post_tree = (req, res) => {
    const parsed = JSON.parse(req.body.devices);

    Max.setDict("devices", parsed[0])
        .then((data) => {
            res.json({
                rcv: true,
            });
        })
        .catch((err) => {
            res.json(err);
        });
};

/*************************************************************
 * GET TREE
 ************************************************************/

exports.get_loadtree = (req, res) => {
    Max.getDict("devices")
        .then((data) => {
            res.json([data]);
        })
        .catch((err) => {
            res.json(err);
        });
};
