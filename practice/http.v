import http
import json

const (
  SWAPI_HREF = 'https://swapi.co/api/'
)

struct ApiRootDto {
  people string
  planets string
  films string
  species string
  vehicles string
  starships string
}

struct PersonDto {
  href string [json:url]
  name string
  height int
  hair_color string
  skin_color string
  eye_color string
  birth_year string
  gender string
  world_href string [json:homeworld]
}

struct PersonCollectionDto {
  count int
  items []PersonDto [json:results]
}

fn get_api_root(swapi_href string) ?ApiRootDto {
  resp := http.get(swapi_href) or {
    panic(err)
  }
  dto := json.decode(ApiRootDto, resp.text)
  return dto
}

fn get_person(href string) ?PersonDto {
  resp := http.get(href) or {
    panic(err)
  }
  dto := json.decode(PersonDto, resp.text)
  return dto
}

fn get_people(href string) ?PersonCollectionDto {
  resp := http.get(href) or {
    panic(err)
  }
  dto := json.decode(PersonCollectionDto, resp.text)
  return dto
}

fn main() {
  api_root := get_api_root(SWAPI_HREF)?
  println(api_root)
  people := get_people(api_root.people)?
  /* println(people) */
  person_href := people.items[0].href
  person := get_person(person_href)?
  println(person)
}
