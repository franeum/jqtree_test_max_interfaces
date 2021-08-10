//  parameters

const Max = require('max-api')
const TreeModel = require('tree-model')
const tree = new TreeModel()




/*************************************************************
 * GET PAGE
 ************************************************************/

exports.get_page = (req, res) => {
    res.render('chooseparameters')
}













/*************************************************************
 * GET PAGE
 ************************************************************/

exports.get_tree = (req, res) => {
    Max.getDict('devices')
        .then(data => {
            const root = tree.parse(data)
            root.all().forEach(node => {
                if (node.model.type == 'io')
                    node.drop()

                if (node.model.type == 'parameter_name')
                    node.model.can_check = true
            })
            res.json([root.model])
        })
        .catch(err => {
            res.json(err)
        })
}