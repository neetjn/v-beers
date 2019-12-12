import os

fn main() {
  file := os.open('log.txt')
  defer {
    file.close()
  }
  println(file)
}
