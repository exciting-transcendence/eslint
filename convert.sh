#!/bin/bash

file='index.js'

echo 'module.exports = ' >$file
eslint --print-config .eslintrc.yml >>$file
eslint --fix $file
