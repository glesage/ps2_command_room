# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Position.create([{x: 1, y: 1}, {x: 1, y: 2},{x: 2, y: 1},
				{x: 2, y: 2}, {x: 2, y: 3},{x: 3, y: 2}, 
				{x: 3, y: 3}, {x: 3, y: 4},{x: 4, y: 3}, 
				{x: 4, y: 4}, {x: 4, y: 5},{x: 5, y: 4}]);

Server.create([{name: "Connery", ps2_id: 1}, {name: "Jaeger", ps2_id: 2},
				{name: "Miller", ps2_id: 3}, {name: "Emerald", ps2_id: 4}]);

Map.create([{name: "Indar", ps2_id: 1},
			{name: "Amerish", ps2_id: 2},
			{name: "Esamir", ps2_id: 3},
			{name: "Hossin", ps2_id: 4},
			{name: "Indar", ps2_id: 5},
			{name: "Esamir", ps2_id: 6}]);

Control.create([{NC: 40, TR: 40, VS: 20},
				{NC: 20, TR: 30, VS: 50},
				{NC: 30, TR: 40, VS: 30,},
				{NC: 25, TR: 25, VS: 50},
				{NC: 45, TR: 25, VS: 30},
				{NC: 30, TR: 20, VS: 50}]);

Population.create([{NC: 25, TR: 30, VS: 25},
					{NC: 30, TR: 40, VS: 30},
					{NC: 40, TR: 40, VS: 20},
					{NC: 25, TR: 25, VS: 50},
					{NC: 30, TR: 20, VS: 50},
					{NC: 25, TR: 25, VS: 50}]);

Facility.create([{faction: 1, name: "Hvar", 	ps2_id: 1, type_name: "Tech Plant", 	type_id: 1},
				{faction: 2, name: "Mekala", 	ps2_id: 2, type_name: "Amp Station", 	type_id: 3},
				{faction: 3, name: "Nut", 		ps2_id: 3, type_name: "Bio Lab", 		type_id: 5},
				{faction: 1, name: "Zurvan", 	ps2_id: 4, type_name: "Amp Station", 	type_id: 3},
				{faction: 2, name: "Allatu", 	ps2_id: 5, type_name: "Mine", 			type_id: 2},
				{faction: 1, name: "Mao", 		ps2_id: 6, type_name: "Tech Plant", 	type_id: 1}]);

Hex.create([{type_id: 1},
			{type_id: 3},
			{type_id: 5},
			{type_id: 3},
			{type_id: 2},
			{type_id: 1}]);

Member.create([{email: "1@mail.com", name: "first user"},
				{email: "2@mail.com", name: "sec user"},
				{email: "3@mail.com", name: "third user"}]);

Room.create([{name: "Delta Squad", token: "test2"},
			{name: "Charlie Squad", token: "test2"}]);

Match.create([{end_time: DateTime.new()},
			  {end_time: DateTime.new()}]);

AirSquad.create([{platoon: 1, squad: 1},
				{platoon: 1, squad: 2},
				{platoon: 2, squad: 1}]);

GroundSquad.create([{platoon: 1, squad: 1},
					{platoon: 1, squad: 2},
					{platoon: 2, squad: 1}]);

Promotion.create([{title: "First ad", description: "My very first ad!", image_path: "ad1.png", start_date: Date.today(), end_date:  Date.today()},
				{title: "Second ad", description: "I'm getting pro!", image_path: "ad2.png", start_date: Date.tomorrow(), end_date:  Date.tomorrow()},
				{title: "Third ad", description: "You gotta see this!", image_path: "ad3.png", start_date: Date.today(), end_date:  Date.tomorrow()}]);