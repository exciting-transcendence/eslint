# eslint-config-transcendence

## 설치법

1. 패키지 설치

```sh
npm i -D @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint eslint-plugin-prettier eslint-plugin-react
```

2. `.eslintrc.yml` 과 `.prettierrc.yml` 복사해서 최상위 디렉토리에 붙여넣기

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
