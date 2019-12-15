import rand

struct User {
  id string
  deleted bool
}

struct UserCollection {
mut:
  users []User
}

fn (c UserCollection) find_user_by_id(id string) ?User {
  // TODO: figure out why following code does not work
  /* found := c.users.filter(it.id == id)
  match found.len {
    0 {
      return error('Could not find user with id "$id" in user collection.')
    }
    1 {
      return found[0]
    }
    else {
      return error('Found $found.len matches, expected 1.')
    }
  }*/
  for _, user in c.users {
    println(user)
    if user.id == id {
      return user
    }
  }
  return error('Could not find user with the id "$id" in user collection.')
}

fn generate_users(num int) []User {
  // following code does not work:
  /*range := [User{}].repeat(num)
  return range.map(User{
    id: rand.next(99999).str()
    deleted: rand.next(2) == 1
  })*/
  mut users := []User
  for _ in [0].repeat(num) {
    id := rand.next(99999).str()
    users << User{
      id: 'a$id'
      deleted: rand.next(2) == 1
    }
  }
  return users
}

fn main() {
  users := generate_users(50)
  // the reason this works is because -
  // v will interpret struct properties procedurally
  // this does NOT work like javascript es6 object notation
  collection := UserCollection { users }
  id := '-'
  user := collection.find_user_by_id(id) or {
    println(err)
    return
  }
  println('Found user with id $id!')
}
