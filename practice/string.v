fn main() {
  base_str := 'hello'
  // basic interpolation
  println('$base_str world')
  // string concatenation
  new_str := base_str + ' bar'
  println(new_str)
  // getting string length
  base_str_len := base_str.len
  print('base_str is $base_str_len characters long!')
  // string/array slice with iterator
  println(base_str[1..base_str.len])
}
