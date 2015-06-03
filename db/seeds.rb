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

Map.create([{name: "Indar", ps2_id: 1, server_id: 1},
			{name: "Amerish", ps2_id: 2, server_id: 2},
			{name: "Esamir", ps2_id: 3, server_id: 3},
			{name: "Hossin", ps2_id: 4, server_id: 4},
			{name: "Indar", ps2_id: 5, server_id: 5},
			{name: "Esamir", ps2_id: 6, server_id: 6}]);

Control.create([{NC: 40, TR: 40, VS: 20, map_id: 1},
				{NC: 20, TR: 30, VS: 50, map_id: 2},
				{NC: 30, TR: 40, VS: 30, map_id: 3},
				{NC: 25, TR: 25, VS: 50, map_id: 4},
				{NC: 45, TR: 25, VS: 30, map_id: 5},
				{NC: 30, TR: 20, VS: 50, map_id: 6}]);

Population.create([{NC: 25, TR: 30, VS: 25, map_id: 1},
					{NC: 30, TR: 40, VS: 30, map_id: 2},
					{NC: 40, TR: 40, VS: 20, map_id: 3},
					{NC: 25, TR: 25, VS: 50, map_id: 4},
					{NC: 30, TR: 20, VS: 50, map_id: 5},
					{NC: 25, TR: 25, VS: 50, map_id: 6}]);

Facility.create([{faction: 1, map_id: 1, name: "Hvar", 	position_id: 1, ps2_id: 1, type_name: "Tech Plant", 	type_id: 1},
				{faction: 2, map_id: 2, name: "Mekala", position_id: 2, ps2_id: 2, type_name: "Amp Station", 	type_id: 3},
				{faction: 3, map_id: 1, name: "Nut", 	position_id: 3, ps2_id: 3, type_name: "Bio Lab", 		type_id: 5},
				{faction: 1, map_id: 3, name: "Zurvan", position_id: 4, ps2_id: 4, type_name: "Amp Station", 	type_id: 3},
				{faction: 2, map_id: 2, name: "Allatu", position_id: 5, ps2_id: 5, type_name: "Mine", 			type_id: 2},
				{faction: 1, map_id: 1, name: "Mao", 	position_id: 6, ps2_id: 6, type_name: "Tech Plant", 	type_id: 1}]);

Hex.create([{facility_id: 1, position_id: 1, type_id: 1},
			{facility_id: 2, position_id: 2, type_id: 3},
			{facility_id: 3, position_id: 3, type_id: 5},
			{facility_id: 4, position_id: 4, type_id: 3},
			{facility_id: 5, position_id: 5, type_id: 2},
			{facility_id: 6, position_id: 6, type_id: 1}]);

Member.create([{email: "1@mail.com", name: "first user"},
				{email: "2@mail.com", name: "sec user"},
				{email: "3@mail.com", name: "third user"}]);

Room.create([{name: "Delta Squad", owner_id: 1, token: "test2"},
			{name: "Charlie Squad", owner_id: 3, token: "test2"}]);

RoomMember.create([{member_id: 1, room_id: 1},
					{member_id: 2, room_id: 1},
					{member_id: 3, room_id: 2}]);

Match.create([{room_id: 1, end_time: DateTime.new()},
			  {room_id: 3, end_time: DateTime.new()}]);

AirSquad.create([{platoon: 1, squad: 1, room_id: 1, position_id: 1},
				{platoon: 1, squad: 2, room_id: 1, position_id: 4},
				{platoon: 2, squad: 1, room_id: 2, position_id: 6}]);

GroundSquad.create([{platoon: 1, squad: 1, room_id: 1, position_id: 2},
					{platoon: 1, squad: 2, room_id: 2, position_id: 3},
					{platoon: 2, squad: 1, room_id: 3, position_id: 7}]);