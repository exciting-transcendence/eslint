#!/bin/bash

init_test() {
  mkdir test
  cd test

  npm init -y
  # npm link @scarf005/eslint-config-transcendence
  npm list
  cp ../test.ts .
}

gen_lint() {
  local file=$1
  local format=${2:-result.txt}
  eslint $file | tail -n +3 >$format
}

run_test() {
  gen_lint test.ts result.txt

  echo "Test diff:"
  diff result.txt ../expected.txt || echo "Test failed"
}

teardown_test() {
  cd ..
  rm -rf test/
}

case $1 in
  gen | generate | gentest)
    gen_lint test.ts expected.txt
    ;;
  *)
    init_test
    run_test
    teardown_test
    ;;
esac
