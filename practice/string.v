fn main() {
  base_str := 'hello'
  // basic interpolation
  assert '$base_str world' == 'hello world'
  // string concatenation
  new_str := base_str + ' bar'
  println(new_str)
  // getting string length
  base_str_len := base_str.len
  println('base_str is $base_str_len characters long!')
  // string/array slice with iterator
  println(base_str[1..base_str.len])
  // mutable variable
  mut mut_str := 'hello'
  println(mut_str)
  mut_str += ' world'
  println(mut_str)
  // multi-line string
  multi_str := '
    hello
    foobar
    world
  '
  println(multi_str)
}
