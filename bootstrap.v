import beers

fn main() {
  docker_exists := os.system('which docke') == 0
  if !docker_exists {
    panic('Docker is not installed or available')
  }
  println(beers.DB_USER)
}

