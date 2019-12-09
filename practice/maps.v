fn main() {
  // empty map instantiation
  // map keys are currently restricted to strings (12-8-19)
  mut base_map := map[string]int
  base_map['age'] = 24
  base_map['height'] = 6
  assert base_map['age'] == 24
  assert base_map['height'] == 6
  // instantiating populated map
  mut numbers := {
    'one': 1,
    'two': 2
  }
  assert numbers['one'] == 1
  // check key in map
  assert 'two' in numbers
  assert !('three' in numbers)
  // delete key/node from map
  // note: strange behavior, this sets 'one' to 0
  numbers.delete('one')
  // assert !('one' in numbers)
  // test: what if we delete a string node?
  mut profile := {
    'name': 'John',
    'occupation': 'Sloth'
  }
  profile.delete('occuptation')
  println(profile['occupation'])
}
