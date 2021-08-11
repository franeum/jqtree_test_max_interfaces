const express = require("express")
const router = express.Router()
const sectionRouter = require("./section")
const deviceRouter = require("./device")
const chooseparametersRouter = require("./chooseparameters")
const presetRouter = require('./preset')

router.use("/section", sectionRouter)
router.use("/device", deviceRouter)
router.use("/chooseparameters", chooseparametersRouter)
router.use("/preset", presetRouter)

module.exports = router