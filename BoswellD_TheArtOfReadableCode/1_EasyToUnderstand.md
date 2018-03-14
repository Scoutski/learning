# :page_with_curl: The art of readable code: Simple and practical techniques for writing better code

## Chapter 1. Code should be easy to understand

- When determining what way to write a function or expression, the **most important** rule is that code should be written to **minimize the time it would take for someone else to understand it**.
- Understanding means they should be able to modify it, spot bugs and understand how it fits in the rest of the code.

- Variables/functions should have as much information as is reasonable packed into the name.
- Avoid words with unclear definitions such as _get_ in favour of more specific terms, such as _download_ or _fetch_.

- Loop iterators can generally use names like _i_, _j_ or _iter_ though if multiple loops are being used, it can be helpful to include more information to ensure the right iterator is referenced.
