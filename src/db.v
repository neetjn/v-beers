module db
import mysql

struct Beer {
  id int
  name string
  brewery string
  style string
  alcohol f32
  ibu int
}

db :=
