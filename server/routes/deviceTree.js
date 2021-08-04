const express = require('express')
const router = express.Router()

const fs = require('fs')
const path = require('path')

// POST tree
router.post('/devicetree', (req, res, next) => {
    //const parsed = JSON.parse(req.body.score)
    //fs.writeFileSync(path.resolve(__dirname, 'stukaz.json'), req.body.score)
    console.log(req.body.score)
    res.json({ received: true })
})

module.exports = router