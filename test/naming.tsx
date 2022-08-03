/* eslint-disable @typescript-eslint/no-unused-vars */
// function
{
  const arrow_fn = () => 3
  const arrowFn = () => 3

  // @ts-expect-error 2304
  const arrowComp = () => <div />

  function fn() {
    return null
  }

  function ReactComp() {
    // @ts-expect-error 2304
    return <div />
  }
}

// const and enums
{
  enum Color {
    Red,
    GREEN,
  }
  const foo = 3
  const IS_SNAKE_CASE = true
  const value = {
    foo: 3,
    bar: 4,
  } as const
}
// class and interface
{
  interface MyInterface {
    foo: 3
  }
  interface IInterface {
    readonly foo: number
    readonly OK: string
    bar: number
  }
  class Bar {
    constructor(readonly foo: number, readonly OK: string) {}
  }
}
