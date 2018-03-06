# :page_with_curl: How to Code: Simple Data

## HtDW (How to Design Worlds)

[:zap: Course Link](https://courses.edx.org/courses/course-v1:UBCx+HtC1x+2T2017/77860a93562d40bda45e452ea064998b/#HtDW)

### :boom: Big bang expressions

- Functions that are specifically used for rendering user interfaces in DrRacket.
- `big-bang` expressions are used to set the initial world state and then produce the world based on the arguments.
- There are several functions that can be passed into `big-bang` that help shape the UI/world.
- An `on-tick` function determines how the world state should change every tick.
- A `to-draw` function which rerenders the world based on all other changes in the `big-bang`.
