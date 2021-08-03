var express = require('express');
var router = express.Router();

/* POST whole json. */
router.post('/', function(req, res, next) {
    const mbuto = req.body.score
    console.log(mbuto)
    const parsed = JSON.parse(mbuto)
    console.log(parsed[0])
    res.json({ received: true })
});

module.exports = router;