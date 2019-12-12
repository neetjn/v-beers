import json

// structs can only be defined at the module level

struct User {
  username string
  age int
  height f32
}

struct Person {
mut:
  name string
}

// pure functions for structs take the struct as the first arg
fn greet(p Person) string {
  return 'Hello $p.name!'
}

struct Item {
  name string
  code string
  product_type string [json:productType]
}

fn main() {
  // TODO: implement match statement, create struct instance
  // create an immutable struct instance
  user := User{
    username: 'jnolette'
    age: 24
    height: 6.1
  }
  assert user.username == 'jnolette'
  assert user.age == 24
  assert user.height == 6.1
  // create a mutable struct instance and modify fields
  mut new_user := Person{
    name: 'John'
  }
  new_user.name = 'Nolette'
  assert new_user.name == 'Nolette'
  // TODO: fix pure function
  /* assert new_user.greet() == 'Hello Nolette' */
  // serialize and deserialize json
  data := '{"name":"plunger","code":"80A121","productType":"bathroom"}'
  item := json.decode(Item, data) or {
    eprintln('Failed to decode')
    return
  }
  assert item.name == 'plunger'
  assert item.code == '80A121'
  assert item.product_type == 'bathroom'
  dumped := json.encode(item)
  assert dumped == data
}
