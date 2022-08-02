#!/bin/bash

org=$(pwd)
dir=../temp
testfile=test.ts
resultfile=result.txt
comparefile=expected.txt
package_eslint='@scarf005/eslint-config-transcendence'
package_prettier='@scarf005/prettier-config-transcendence'

gen_lint() {
  local file=$1
  local format=$2
  eslint $file | tail -n +3 >$format
}

init_test() {
  mkdir $dir

  cp $testfile $dir
  cp $comparefile $dir
  cp ./package.dummy.json $dir/package.json
  echo extends: \"$package_eslint\" >$dir/.eslintrc.yml

  cd $dir
  cat .eslintrc.yml
  npm link $package_prettier $package_eslint
  npm list
}

run_test() {
  gen_lint $testfile $resultfile

  echo "Test diff:"
  diff $resultfile $comparefile || echo "Test failed"
}

teardown_test() {
  cd $org
  rm -rf $dir
}

case $1 in
  gen | generate | gentest)
    gen_lint $testfile $comparefile
    # run npm link
    ;;
  *)
    init_test
    run_test
    teardown_test
    ;;
esac
