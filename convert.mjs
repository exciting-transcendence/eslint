#!/usr/bin/env node

import { parse } from 'yaml'
import { readFileSync, writeFileSync } from 'fs'

const raw = readFileSync('./.eslintrc.yml', 'utf8')
const data = JSON.stringify(parse(raw), null, 2)
const file = 'index.js'

writeFileSync(file, `module.exports = ${data}`)
// console.log(module.exports)
