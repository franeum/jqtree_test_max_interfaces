const express = require("express")
const parameters = require("../controllers/chooseParametersController")
const router = express.Router()






/*************************************************************
 * GET PAGE
 ************************************************************/

/**
 * ask for the main page of section tree
 *
 * @name /chooseparameters/tree  
 * @path {GET} /chooseparameters/tree
 **/
router.get('/tree', parameters.get_page)









/*************************************************************
 * GET TREE
 ************************************************************/
/**
 * ask for the tree of parameters
 *
 * @name /chooseparameters/checktree  
 * @path {GET} /chooseparameters/checktree
 **/
router.get('/checktree', parameters.get_tree)






























/*************************************************************
 * POST TREE
 ************************************************************/
/**
 * post tree of parameters
 *
 * @name /chooseparameters/tree  
 * @path {POST} /chooseparameters/checktree
 **/
router.post('/tree', parameters.post_tree)





module.exports = router