// ## Immutability Experimentation

// Attempt the following exercises in the different programming languages you know. If you only know one other programming language, then attempt to do these exercises differently using the same language.

// Most importantly, notice where you mutate variables and where you don't.

// a. Given a key/value data structure (such as Hash in Ruby or Object in Javascript), 
// ```
// info = {name: "john", career: "programmer", city: "vancouver"}
// ```

// Capitalize the values. Notice if you mutated the original structure or not.

const info = {name: "john", career: "programmer", city: "vancouver"};

function capitalize(string) {
  return string[0].toUpperCase() + string.slice(1);
}

info.name = capitalize(info.name); // this type of code will mutate the object
info.career = capitalize(info.career);
info.city = capitalize(info.city);

const infoCap = {name: capitalize(info.name), career: capitalize(info.career), city: capitalize(info.city)};