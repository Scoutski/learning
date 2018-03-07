# :page_with_curl: How to Code: Simple Data

## HtDW (How to Design Worlds)

[:zap: Course Link](https://courses.edx.org/courses/course-v1:UBCx+HtC1x+2T2017/77860a93562d40bda45e452ea064998b/#HtDW)

### :boom: Big bang expressions

- Functions that are specifically used for rendering user interfaces in DrRacket.
- `big-bang` expressions are used to set the initial world state and then produce the world based on the arguments.
- There are several optional functions that can be passed into `big-bang` that help shape the UI/world.
- An `on-tick` function determines how the world state should change as time passes.
- A `to-draw` function which rerenders the world based on all other changes in the `big-bang`.
- An `on-key` function that responds to key presses.
- An `on-mouse` function that responds to mouse activity.
- A `stop-when` function that determines when the program should end.

### :orange_book: HtDW Recipe

1. Domain Analysis
    1. Draw approximately 2-3 images that reflect different stages in the programs evolution.
    2. Identify constant information throughout the program (_e.g. screen width_).
    3. Identify changing information throughout the program (_e.g. player position in a game_)
    4. Identify `big-bang` options.
2. Build the program!
    1. Define the constants that were identified as part of the domain analysis. (_e.g. const WIDTH = 600;_)
    2. Define the data to be consumed by the `big-bang` function using the HtDD recipe.
    3. Write the required function(s) using the HtDF recipe. Start with the `main` function and then fill in the wish list functions with real information so that the program can run.
    4. Work through each of the wish list functions until the program is complete!

### :smiley_cat: Cat Program Domain Analysis

Constant Values:

- Screen Width
- Screen Height
- Center of the Y axis (half height)
- Empty Space Object
- Cat Image
- Speed

Changing Values:
- X Coordinate of cat

Big-bang options:
- on-tick (use Speed)
- on-draw
- on-key
