const express = require("express");
const preset = require("../controllers/presetController");
const router = express.Router();

/*************************************************************
 * GET PRESET PAGE && TREE
 ************************************************************/

/**
 * ask for the main page of section tree
 *
 * @name /preset/tree
 * @path {GET} /preset/tree
 **/
router.get("/tree", preset.get_preset);

/*************************************************************
 * POST PRESET TREE
 ************************************************************/

/**
 * send preset values
 *
 * @name /preset/tree
 * @path {POST} /preset/tree
 **/
router.post("/tree", preset.post_preset);

module.exports = router;
