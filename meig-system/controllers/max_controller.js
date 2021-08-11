const Max = require('max-api')
const TreeModel = require('tree-model')
const tree = new TreeModel()






/****************************************************************
 * post_params(_id) => post params by id
 ****************************************************************/

Max.addHandler('post_params', (_id) => {
    Max.getDict('devices')
        .then(data => {
            const root = tree.parse(data)
            const parameters = []
            const nodes = findAllByType(root, 'parameter_name')
            nodes.map(node => {
                node.model.path = findPathName(node)
                parameters.push(node.model)
            })

            Max.getDict('parameters')
                .then(data => {
                    data.parameters[_id] = parameters
                    Max.setDict('parameters', data)
                })
                .catch(error => Max.post(error))
        })
        .catch(err => {
            Max.post("error:", err)
        })
})




/****************************************************************
 * get_params(_id) => get params by id
 ****************************************************************/

Max.addHandler('get_params', (_id) => {
    Max.getDict('parameters')
        .then(data => {
            data.parameters[_id].forEach(p => {
                Max.outlet(p.path)
            })
        })
        .catch(error => Max.outlet(error))
})







/****************************************************************
 * get_matrix() => 
 ****************************************************************/





// UTILITIES

/****************************************************************
 * findAllByType(node, type) => earch all nodes by type
 ****************************************************************/

const findAllByType = (tree, type) => {
    const nodes = []
    tree.all(node => {
        if (node.model.type == type) {
            nodes.push(node)
        }
    })
    return nodes
}







/****************************************************************
 * findPathName(node) => find Path from root to node
 ****************************************************************/

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



/****************************************************************
 * pathParametersToLLL() => output a bach list
 ****************************************************************/

const pathParametersToLLL = () => {
    return
}

module.exports = Max