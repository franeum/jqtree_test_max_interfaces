function bang() {
    var timestamp = ((new Date().getTime() / 1000) | 0).toString(16)
    const value = (
        timestamp +
        "xxxxxxxxxxxxxxxx".replace(/[x]/g, function() {
            return ((Math.random() * 16) | 0).toString(16)
        })
        .toLowerCase()
    )
	outlet(0, value)
}