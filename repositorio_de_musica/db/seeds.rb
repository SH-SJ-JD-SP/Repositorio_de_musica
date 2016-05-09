# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
Tuning.create(nombre_afinacion:"Tono estandar",		descripcion:"Mi  La  Re  Sol  Si  Mi")
Tuning.create(nombre_afinacion:"Medio tono abajo",	descripcion:"Re#  Sol#  Do#  Fa#  La#  Re#")
Tuning.create(nombre_afinacion:"Tono abajo",		descripcion:"Re  Sol  Do  Fa  La  Re")

Genre.create(nombre:"Rock alternativo")
Genre.create(nombre:"Indie rock")
Genre.create(nombre:"Indie pop")
Genre.create(nombre:"Hard rock")
Genre.create(nombre:"Pop rock")
Genre.create(nombre:"Britpop")

Chord.create(nombre_acorde:"Do")
Chord.create(nombre_acorde:"Re")
Chord.create(nombre_acorde:"Mi")
Chord.create(nombre_acorde:"La")
Chord.create(nombre_acorde:"Sol")
Chord.create(nombre_acorde:"La")
Chord.create(nombre_acorde:"Si")

Song.create(titulo: "bohemian rapsody", autor: "Freddie Mercury", album: "A nigth of opera",anio_creacion: 1975, letra: "esta es la letra dela cancion",genre_id: 1,tuning_id: 1,url_video:"vsl3gBVO2k4")

=end