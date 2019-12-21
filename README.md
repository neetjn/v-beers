# v-beers

This project was created to learn V lang basics, as well as common use cases similar to other languages I use regularly. I'll be recording my experiments and what I've learned while treking through V.

# Practices

* :star: [http.v](https://github.com/neetjn/v-beers/blob/master/practice/http.v) - HTTP client for SWAPI (star wars api).
* :star: [error.v](https://github.com/neetjn/v-beers/blob/master/practice/error.v) - Error handling practice, includes a couple of other concepts.
* [structs.v](https://github.com/neetjn/v-beers/blob/master/practice/structs.v) - Simple structs exercise, includes JSON encoding/decoding.
* [io.v](https://github.com/neetjn/v-beers/blob/master/practice/io.v) - Simple exercises for creating and deleting files + directories, and reading environmental variables.
* [maps.v](https://github.com/neetjn/v-beers/blob/master/practice/maps.v) - Simple exercises for maps.
* [array.v](https://github.com/neetjn/v-beers/blob/master/practice/array.v) - Simple exercises for arrays.
* [num.v](https://github.com/neetjn/v-beers/blob/master/practice/num.v) - Simple arithmetic using vlang, solving a euler problem.
* [string.v](https://github.com/neetjn/v-beers/blob/master/practice/string.v) - Simple exercises for strings.

# Experiments

> Could not complete, many documented features and modules in the standard library are currently unavailable (2/21/19).

* [ ] Create a locale package, module, or library and utilize.
* [ ] Leverage vpm package manager for 3rd party packages.
* [X] Read from environmental variables.
* [X] Read from a file in a local directory.
* [x] Create a basic DTO (data transfer object).
* [x] Marshal and unmarshal DTO to string and V struct.
* [ ] Expose REST endpoints for experiment application.
* [ ] Create a service description for my RESt endpoints, following the HATEOAS model.
* [ ] Handle multiple different HTTP verbs.
* [ ] Dockerize application (include 3rd party packages).
* [ ] Create unit tests and execute on a CI/CD platform.
* [ ] Connect to a relational database (Postgres).

# What I've Learned

* V has very specific use cases, it's not a widely adopted language.
* V is a very new language, new features are being implemented every week.
  * Equality checks for Arrays are still not yet implemented (as of 12/8/19).
  * Maps only currently support string keys.
* V's compiler is incredibly fast, and can be used for prototyping or proof of concept. However the language essentially transpiles down into c, and gcc should be used in production.
* It's similar to Go and is also influenced by Oberon, Rust, Swift.
* V is a compiled language, that compiles down into byte code so it can run on any machine.
* Not garbage collected, similar to Rust memory must be managed at compile time.
* Fast, can compile around 1.2 million lines of code per second per CPU core (of an i5-7500).
* API is not yet that robust, certainly still in it's infancy stages. (using V for everyday tasks may not be viable)
* V is type a statically typed, type strict language.
  * Types are inferred upon instantiation.
  * Variables of a given type cannot be set to a different variable type once intantiated.
  * Arrays and sets are also type strict.
  * Unfortunately, maps are restricted to a single node type they're inferred by.
* Variables are immutable by default, once inferred they cannot be modified.
  * Mutable variables must be denoted by the keyword `mut`.
* V does not support interfaces like Go, but provides implict structures.
* The language ships with it's own linter similar to prettier (see build steps), as well as unit testing utilities.
* Documentation for v is very lacking, not many resources are available (as of 12/12/19).
  * ~~None of the standard library is covered explicitly in the official docs.~~
    * The standard library is covered [here](https://vlang.io/modules) but does not include db related modules.
  * I've had to read the std lib modules to learn what's possible, which is rather inconvenient considering I'm learning the language.
* V ships with it's own ORM for Postgres in the standard library, with plans to support SQLite and MySQL in the future.
  * Re: [v-lang orm](https://vlang.io/docs#orm)
* Because v is preprocessed into c at compile time, interop with C is incredibly easy and seamless.

# Closing Thoughts

* V is an incredibly immature programming language with some boastful capability and performance benchmarks to boot.
* A market for v developers does not exist, as it stands the language may never reach maturity.
  * Support was high when the language was announced, but the language's author has failed to hit his promised performance targets multiple times.
* Even in it's infancy, v can be a very productive language. However, at the time of writing this (12/21/19) many modules in the std aren't available or were misdocumented in the official documentation. This is understandable for such a new language, but I wouldn't personally use V until it's been proofed for production.
* Ecosystem is manageable. The official package manager is baked in with the `v` binary, it's fairly simple to use but is missing some pretty big features that tend to be expected in modern package managers (package config, lock files, versioning).

# Resources

v-lang - https://vlang.io/docs

---

Copyright (c) 2019 John Nolette Licensed under the MIT License.
