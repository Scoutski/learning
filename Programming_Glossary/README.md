# :books: Programming Glossary

## Atomic Data:

> Atomic data is data in it's most basic form so that it could not be broken down further to better represent information. This comes from chemistry and physics where the smallest particle that can represent an element is the atom.
> _e.g. Total sales = 500_

## Debouncing

> Debouncing is a way of limiting a function from firing too often in rapid succession. By providing a fractional delay to a function being performed, it can greatly improve performance and in extreme cases, prevent an application from crashing. A common example of this is a method that fires on window resize and performs complex calculations everytime the window size changes.
> Below is the .debounce() method from underscore.js:

```js
function debounce(func, wait, immediate) {
  var timeout;
  return function() {
    var context = this, args = arguments;
    var later = function() {
      timeout = null;
      if (!immediate) func.apply(context, args);
    };
    var callNow = immediate && !timeout;
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
    if (callNow) func.apply(context, args);
  };
};
```

## Orthogonalilty:

> Orthogonal designs/functions are independent of other designs/functions and should operate the same regardless of whether or not a different pattern is used or a different function is run. Orthogonality also the basis of functional programming where a function does not have any side-effects.
> _e.g. (x) => x + 2_ will always produce the same result given the same input without effecting the value of x outside of the function.

## White box testing:

> (Also known as _Clear box testing, glass box testing, transparent box testing and structural testing_).
> White box testing is when tests are written with an understanding of how the system will work. For example in a unit test, if a programmer knows the different control flows that can occur, they can write tests which specifically target each flow, without worrying about impossible edge cases.
