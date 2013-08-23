require 'active_record'
require 'mysql2'

ActiveRecord::Base.establish_connection(
  adapter:  "mysql2",
  host:     "localhost",
  username: 'root',
  password: 'passer',
  database: 'decoupage_administratif',
  encoding: "utf8"
)