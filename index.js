module.exports = {
  "parser": "@typescript-eslint/parser",
  "parserOptions": {
    "project": "**/tsconfig.json",
    "sourceType": "module"
  },
  "plugins": [
    "@typescript-eslint/eslint-plugin",
    "prettier",
    "react"
  ],
  "extends": [
    "plugin:@typescript-eslint/recommended"
  ],
  "root": true,
  "env": {
    "node": true,
    "jest": true
  },
  "rules": {
    "prettier/prettier": "error",
    "@typescript-eslint/interface-name-prefix": "off",
    "@typescript-eslint/explicit-function-return-type": "off",
    "@typescript-eslint/explicit-module-boundary-types": "off",
    "@typescript-eslint/no-explicit-any": "off",
    "eqeqeq": [
      "error",
      "always"
    ],
    "semi": [
      "error",
      "never"
    ],
    "@typescript-eslint/member-delimiter-style": [
      "error",
      {
        "multiline": {
          "delimiter": "none",
          "requireLast": false
        }
      }
    ]
  }
}