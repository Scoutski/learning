# How to Code: Simple Data :page_with_curl:

## HtDF (How to Design Functions) Recipe

### Description

- Used for systematic design of functions in step-by-step process
- Not necessary to complete in order as some requirements may not become clear until all details are revealed
- Source: https://courses.edx.org/courses/course-v1:UBCx+HtC1x+2T2017/77860a93562d40bda45e452ea064998b/#HtDF

### Steps

1. Define Signature :arrow_right:

Show the input(s) and output(s) of the given function in this format:

```js
// Type -> Type
// e.g. String, Number -> Boolean
```

2. Description :page_facing_up:

One line description explaining in real world terms the purpose of the function. Explanations can imply expected results if other cases are covered.

```js
// isEven? function:
// e.g. Given a number, returns true if the number is even
```

3. Stub :pill:

A syntactically complete function in the specified language that meets the criteria of the signature.

```js
// e.g
function isEven (n) {
  return true;
}
```

4. Tests/Examples :white_check_mark:

Using whatever test framework is appropriate, check the cases required to test a function. There should be enough examples to cover all edge cases as well

```js
// e.g.
console.assert(isEven(2) === true);
console.assert(isEven(1) === false);
```

5. Template :repeat:

A template can be used for functions that follow a specific format (depending on the langauge), the template can include constants if they would be required.

```js
// e.g.
function isEven (n) {
  // ...n
}
```

6. Code :clapper:

The actual code that will pass the tests written earlier. It is useful to use all the steps above to help write the function.

```js
// e.g.
function isEven (n) {
  return n % 2 === 0
}
```

7. Debugging :bug:

After the code has been written, it is time to test and debug until all the tests pass. Remember to start running the code as early as possible to identify bugs as soon as they appear (for instance, a syntax error in the stub).