fn main() {
  // defining a list
  base_arr := [1, 2, 3]
  assert base_arr.len == 3
  println(base_arr)
  // pushing elements into existing list
  mut mut_arr := []string // instantiate empty string, must denote type
  mut_arr << 'hello'
  mut_arr << 'world'
  assert mut_arr.len == 2
  // check if element in list
  check := 'hello' in mut_arr
  assert check
  println(check)
  // mut_arr << 5 will not work, arrays are of single type
  assert mut_arr[0] == 'hello'
  assert mut_arr[1] == 'world'
  println(mut_arr)
  // generate an array similar to Python's range method
  mut gen_arr := [0].repeat(50) // generate 50 elements, all 0
  assert gen_arr.len == 50
  println(gen_arr)
  // empty an array
  gen_arr = []int
  println(gen_arr)
  // filter a list
  f_arr := [1, 2, 3, 4, 5, 6]
  filtered := f_arr.filter(it % 2 == 0)
  // not yet supported
  /* assert filtered == [2, 4, 6] */
  assert filtered[0] == 2 && filtered[1] == 4 && filtered[2] == 6
  println(filtered)
  mapped := filtered.map(it * 2)
  // not yet supported
  /* assert mapped == [4, 8, 12] */
  assert mapped[0] == 4 && mapped[1] == 8 && mapped[2] == 12
  println(mapped)
}
