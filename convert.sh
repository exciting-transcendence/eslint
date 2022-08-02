#!/bin/bash

create_js() {
  file='index.js'

  echo 'module.exports = ' >$file
  eslint --print-config .eslintrc.yml >>$file
  eslint --fix $file
}

create_js
