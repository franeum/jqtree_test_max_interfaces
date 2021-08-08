// device








/*************************************************************
 * GET SECTION PAGE && TREE
 ************************************************************/

exports.get_page_tree = (req, res) => {
    res.render('devices')
}













/*************************************************************
 * POST TREE
 ************************************************************/

exports.post_tree = (req, res) => {
    const parsed = JSON.parse(req.body.devices)
    console.log(parsed[0].children[0])
    res.json({ rcv: true })
}