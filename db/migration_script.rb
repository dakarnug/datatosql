require './connect_db.rb'

ActiveRecord::Migrator.migrate "db/migrate/", ARGV[0] ? ARGV[0].to_i : nil