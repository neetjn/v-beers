# v-beers

This project was created to learn V lang basics, as well as common use cases similar to other languages I use regularly. I'll be recording my experiments and what I've learned while treking through V.

# Practices

* [http.v]() - TBD
* [structs.v]() - TBD
* [error.v]() - TBD
* [io.v]() - TBD
* [maps.v]() - TBD
* [array.v]() - TBD
* [num.v]() - TBD
* [string.v]() - TBD

# Experiments

* [ ] Create a locale package, module, or library and utilize.
* [ ] Leverage vpm package manager for 3rd party packages.
* [ ] Read from environmental variables.
* [ ] Read from a file in a local directory.
* [ ] Create a basic DTO (data transfer object).
* [ ] Marshal and unmarshal DTO to string and V struct.
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
* It's similar to Go and is also influenced by Oberon, Rust, Swift.
* V is a compiled language, that compiles down into byte code so it can run on any machine.
* Not garbage collected, similar to Rust memory must be managed at compile time.
* Fast, can compile around 1.2 million lines of code per second per CPU core (of an i5-7500).
* API is not yet that robust, certainly still in it's infancy stages. (using V for everyday tasks may not be viable)
* V is type a statically typed, type strict language.
  * Types are inferred upon instantiation.
  * Variables of a given type cannot be set to a different variable type once intantiated.
  * Arrays and sets are also type strict.
* Variables are immutable by default, once inferred they cannot be modified.
  * Mutable variables must be denoted by the keyword `mut`.

# Closing Thoughts

TBD

# Resources

v-lang - https://vlang.io/docs

---

Copyright (c) 2019 John Nolette Licensed under the MIT License.
