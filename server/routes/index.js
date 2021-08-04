var express = require('express')
var router = express.Router()

/* GET section tree. */
router.get('/', function(req, res, next) {
    res.render('index', { title: 'Express' })
})

/* GET devices tree. */
router.get('/devices', function(req, res, next) {
    res.render('devices')
})

module.exports = router