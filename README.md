# eslint-config-transcendence

## 설치법

1. 패키지 설치

```sh
npm install -D @scarf005/eslint-config-transcendence
```

2. `.eslintrc.yml`에 `extends: "@scarf005/eslint-config-transcendence"` 추가
3. `package.json`에 `"prettier": "@scarf005/prettier-config-transcendence"` 추가

## 예시

```ts
const a = 3
if (a == 2) {
  console.log(a)
}
```

```sh
❯ eslint test.ts

/home/scarf/Repo/eslint-config-transcendence/test.ts
  1:12  error  Delete `;`                                             prettier/prettier
  2:7   error  Expected '===' and instead saw '=='                    eqeqeq
  3:1   error  Replace `····console.log(a);` with `··console.log(a)`  prettier/prettier

✖ 3 problems (3 errors, 0 warnings)
  2 errors and 0 warnings potentially fixable with the `--fix` option.

```

## 테스트에서 이상한 오류가 날 시

`npm run convert` 이후 재시도
