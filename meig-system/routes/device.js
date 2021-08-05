const express = require("express")
const device = require("../controllers/deviceController")
const router = express.Router()






/*************************************************************
 * GET DEVICE PAGE && TREE
 ************************************************************/

/**
 * ask for the main page of section tree
 *
 * @name /device/tree  
 * @path {GET} /device/tree
 * @example 
 **/
router.get('/tree', device.get_page_tree)

module.exports = router