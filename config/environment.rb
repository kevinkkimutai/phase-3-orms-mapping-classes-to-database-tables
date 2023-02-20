require 'bundler'
Bundler.require

require_relative '../lib/song'

DB = { conn: SQLite3::Database.new("db/music.db") }

Song.create_table

# inserting to database
hello = Song.new(name: "mine", album: "also")
hello.save