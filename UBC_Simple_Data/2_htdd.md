# :page_with_curl: How to Code: Simple Data

## HtDD (How to Design Data)

[:zap: Course Link](https://courses.edx.org/courses/course-v1:UBCx+HtC1x+2T2017/77860a93562d40bda45e452ea064998b/#HtDD)

### Description

- Used to establish and represent the relationship between the program's domain and the data within the program.
- Similar to the [HTDF](https://github.com/Scoutski/learning/blob/master/UBC_Simple_Data/1_htdf_recipe.md) recipe, uses a step-by-step formula.
- Data definitions become particularly helpful when writing tests for a function using them to ensure endpoints and edge cases are clear.

### Steps

1. :construction_worker: Identify Structure

Determine the structure of the information trying to be represented. This will determine the complexity for the data. There are several types of data structures covered here:

| Type | Description |
--- | ---
**Atomic** | The simplest form of data to represent, e.g. whether a light switch is on or off. [Glossary Link](https://github.com/Scoutski/learning/tree/master/Programming_Glossary#atomic-data)
**Interval** | Numbers in a specific range
**Enumeration** | One of a set of distinct values
**Itemization** | 2 or more subclasses, at least one of which is not a distinct value

2. :package: Type comment

Defines a type name and describes how the data should be formed. Should be written as **Name** is _Type_

```js
// e.g. TLColour is one of:
// - 0
// - 1
// - 2
// Represents one of three states for a traffic light colour
```

3. :mag_right: Interpretation

Shows how the information and data correspond with each other.

```js
// e.g. 0 = red, 1 = orange, 2 = green. Any other number is invalid.
```

4. :white_check_mark: Examples

Show how the data should be represented within the code.

```js
const TLColour1 = 0;
const TLColour2 = 1;
const TLColour3 = 2;
```

5. :repeat: Template

Give a basic template for a 1 argument function operating on the new data type.

```js
function fnForTLColour (TLColour) {
  if (TLColour === 0) {
    // ...
  } else if (TLColour === 1) {
    // ...
  } else if (TLColour === 3) {
    // ...
  } else {
    throw new Error('Invalid TLColour')
  }
}
```

## :heavy_exclamation_mark: Additional type rules

### :abc: Itemization

1. If a given subclass is the last subclass of a type, you only need to check the type and not the value.
2. If all remaining cases are of the same type, you don't need to include the type guards as they will be satisfied in every case.