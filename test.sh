#!/bin/bash

mkdir test
cd test

npm init -y
npm link @scarf005/eslint-config-transcendence
cp ../test.ts .
npm list
# npm i -D @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint eslint-plugin-prettier eslint-plugin-react
# cp ../test.ts ../.prettierrc.yml ../.eslintrc.yml .

eslint test.ts | tail -n +3 >result.txt

echo "Test diff:"
diff result.txt ../expected.txt || echo "Test failed"

cd ..
rm -rf test/
