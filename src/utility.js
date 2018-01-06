function getData (url, callback, errcallback) {
  fetch(url)
  .then(response => response.json())
  .then(data => callback(data))
  .catch(err => errcallback(err))
}
function getTime (seconds) {
  var h = Math.floor(seconds / 3600)
  var m = Math.floor((seconds / 60 % 60)) < 10 ? '0' + Math.floor((seconds / 60 % 60)) : Math.floor((seconds / 60 % 60))
  var s = Math.floor((seconds % 60)) < 10 ? '0' + Math.floor((seconds % 60)) : Math.floor((seconds % 60))
  if (h > 0 && h < 10) {
    h = '0' + h + ':'
  } else if (h === 0) {
    h = ''
  }
  return h + m + ':' + s
}
exports.getData = getData
exports.getTime = getTime
