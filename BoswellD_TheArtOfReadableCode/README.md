# :page_with_curl: The Art of Readable Code: Simple and practical techniques for writing better code

## :information_desk_person: Book Information

[Amazon link](https://www.edx.org/course/how-code-simple-data-ubcx-htc1x)

> "This book focuses on basic principles and practical techniques you can apply every time you write code. Using easy-to-digest code examples from different languages, each chapter dives into a different aspect of coding, and demonstrates how you can make your code easy to understand."

## :white_check_mark: Progress

- [x] Code should be easy to understand
- [x] Packing Information into Names
- [x] Names That Can’t Be Misconstrued
- [x] Aesthetics
- [ ] Knowing What to Comment
- [ ] Making Comments Precise and Compact
- [ ] Making Control Flow Easy to Read
- [ ] Breaking Down Giant Expressions
- [ ] Variables and Readability
- [ ] Extracting Unrelated Subproblems
- [ ] One Task at a Time
- [ ] Turning Thoughts into Code
- [ ] Writing Less Code
- [ ] Testing and Readability
- [ ] Designing and Implementing a “Minute/Hour Counter”

## :pencil: Notes

- Ultimately the goal in any piece of code should be to **minimize the time it would take for someone else to understand it.**

### Naming things

**Rules for naming variables:**

Rule | Description
--- | ---
Specificity | The more **specific** a word is the easier it will be to understand. e.g. avoiding the word _get_ in place of something more specific such as _download_ or _fetch_.
Concreteness | Abstract names become confusing when they can be interpreted subjectively. **The less a person can interpret about the meaning, the clearer it will be.**
Use Units When applicable | When a value stores a representation of a specific unit, it is helpful to include the unit type on the variable name. e.g. if measuring the speed of car use _speed_km_ instead of _speed_. Note this method can also be used for encoding too.
Scope | The size of scope in which a variable is used directly relates to how informative the name needs to be.
Use Formatting conventions | Depending on the language, use appropriate conventions, such as **camelCase** for variables or functions, **PascalCase** for class names or constructors and **UPPER_SNAKE_CASE** for constants in JavaScript.

- **A note on loop iterators**: Loop iterators can generally use names like _i_, _j_ or _iter_ though if multiple loops are being used, it can be helpful to include more information to ensure the right iterator is referenced.

- When naming things, ask the question **What other meanings could someone interpret from this name?**

Additional tips based on a names context:

For | Use
--- | ---
inclusive limits | min_ & max_
inclusive range | first_ & last_
inclusive/exclusive range | begin_ & end_
booleans | is_, has_, can_ or should_

- Another note on **booleans** is that it is always more clear to use the positive context, e.g. avoid names like _isNotActive_.

### Aesthetics

- Consider the **silhoutte** of a piece of code. Without actually reading anything, it can show neatness and blocks that may be related.
- Similar pieces of code should look similar. e.g. It is totally acceptable to use line breaks when they aren't needed for one function call when they are needed for another, so that both calls look related for the reader.
- When there are irregular patterns in creating classes/objects or in function calls, **helper methods** can provide support to make cleaner more readable blocks. Not only that, this process helps **clean up duplicate code**.
- Using artificial columns for assignments helps highlight errors and makes multiple assignments more readable. Although subjective the difference can be noticed quickly. consider the following example:

```js
const fullName = "Tom Jones";
const age = 60;
const dogsOwned = 3;
const heightCm = 180;
```
**vs**
```js
const fullName  = "Tom Jones";
const age       = 60;
const dogsOwned = 3;
const heightCm  = 180;
```

- Break code into _paragraphs_ when you recognise that related lines can be put together.
- When entering an existing project, conform to the existing style rather than introducing personal style. **Consistency is always the most important thing for readability.**