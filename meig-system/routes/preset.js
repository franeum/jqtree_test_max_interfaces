const express = require("express")
const preset = require("../controllers/presetController")
const router = express.Router()






/*************************************************************
 * GET SECTION PAGE && TREE
 ************************************************************/

/**
 * ask for the main page of section tree
 *
 * @name /preset/tree  
 * @path {GET} /preset/tree
 **/
router.get("/tree", preset.get_preset)




module.exports = router