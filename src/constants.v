module constants
import os

const (
  DB_USER = os.getenv('DB_USER') || 'admin'
  DB_PASS = os.getenv('DB_PASS') || 'admin'
  DB_NAME = os.getenv('DB_NAME') || 'v-beers'
  DB_HOST = os.getenv('DB_HOST') || '0.0.0.0'
  DB_PORT = os.getenv('DB_PORT') || '27017'
  DB_TEST = os.getenv('DB_TEST') == 'TRUE'
)
