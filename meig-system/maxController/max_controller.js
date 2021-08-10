const Max = require('max-api')
const deepFindAll = require('deep_find').findAll;

const walkTree = require('@moyuyc/walk-tree')
const traverse = require('turbo-traverse')
var TreeModel = require('tree-model')
var tree = new TreeModel()


Max.addHandler('get_params', (_id) => {
    Max.getDict('devices')
        .then(data => {
            const root = tree.parse(data)
            const parameters = []

            const nodes = findAllByType(root, 'parameter_name')
            nodes.map(node => {
                node.model.path = findPathName(node)
                parameters.push(node.model)
            })

            const p = {}
            p[_id] = parameters
            Max.updateDict('parameters', _id, p)
                //Max.setDict('parameters', p)

        })
        .catch(err => {
            Max.post("err", err)
        })
})


// utilities

// search all nodes by type

const findAllByType = (tree, type) => {
    const nodes = []
    tree.all(node => {
        if (node.model.type == type) {
            nodes.push(node)
        }
    })
    return nodes
}


// find Path from root to node

const findPathName = (node) => {
    let arrPath = []
    const purePath = node.getPath()

    purePath.map(n => {
        arrPath.push(n.model.name)
    })

    arrPath = arrPath.slice(1, -2)
    arrPath.push(node.model.name)

    return arrPath.join('.')
}


module.exports = Max