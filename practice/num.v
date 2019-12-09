fn main() {
  // euler's problem: https://projecteuler.net/problem=1
  mut total_sum := 0
  multiples := [3, 5]
  for i, _ in [0].repeat(1000) {
    result := i + 1
    check := multiples.filter(result % it == 0).len >= 1
    if check {
      total_sum += result
    }
  }
  println('Multiples of 3 and 5 below 1000: $total_sum')
}
