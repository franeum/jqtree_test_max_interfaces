const express = require("express")
const router = express.Router()
const sectionRouter = require("./section")
const deviceRouter = require("./device")

router.use("/section", sectionRouter)
router.use("/device", deviceRouter)

module.exports = router