module db
import mysql
import constants

struct Beer {
  id int
  name string
  brewery string
  style string
  alcohol f32
  ibu int
}
