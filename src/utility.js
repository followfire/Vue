function getData (url, callback) {
  fetch(url)
  .then(response => response.json())
  .then(data => callback(data))
  .catch(err => console.log(err))
}
exports.getData = getData
