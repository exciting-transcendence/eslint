const yaml = require('yaml')
const fs = require('fs')
const file = fs.readFileSync('./.eslintrc.yml', 'utf8')

const data = JSON.stringify(yaml.parse(file), null, 2)

fs.writeFileSync('index.js', `module.exports = ${data}`)
// console.log(module.exports)
