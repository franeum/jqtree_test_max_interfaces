const express = require('express')
const router = express.Router()

const fs = require('fs')
const path = require('path')
let Max = undefined

try {
    Max = require('max-api')
} catch {
    console.log("server outside max")
}

// POST tree
router.post('/sectiontree', (req, res, next) => {
    const parsed = JSON.parse(req.body.score)
        //fs.writeFileSync(path.resolve(__dirname, 'stukaz.json'), req.body.score)
        //console.log(typeof(req.body.score))
        //Max.setDict('sections', parsed)
    if (Max) {
        Max.setDict('sections', {
            score: parsed
        })
    }

    res.json({
        received: true
    })
})

module.exports = router