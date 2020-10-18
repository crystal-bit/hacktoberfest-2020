extends Resource
class_name EnemyResource

export(EnemyTypes.ENEMY_TYPES) var type
export(EnemyTypes.GRADE) var grade
export(Texture) var texture


func get_name():
	match type:
		EnemyTypes.ENEMY_TYPES.SOLDIER:
			return "Soldier"
		EnemyTypes.ENEMY_TYPES.COMMANDO:
			return "Commando"
		EnemyTypes.ENEMY_TYPES.ARMORED_TRANSPORT:
			return "Armored Transport"
		EnemyTypes.ENEMY_TYPES.TANK:
			return "Tank"
		EnemyTypes.ENEMY_TYPES.AIRCRAFT:
			return "Aircraft"

func get_hp():
	match type and grade:
		type.SOLDIER, grade.NORMAL:
			return 30
		type.SOLDIER, grade.ELITE:
			return 60
		type.COMMANDO, grade.NORMAL:
			return 80
		type.COMMANDO, grade.ELITE:
			return 120
		type.ARMORED_TRANSPORT, grade.NORMAL:
			return 70
		type.ARMORED_TRANSPORT, grade.ELITE:
			return 100
		type.TANK, grade.NORMAL:
			return 250
		type.TANK, grade.ELITE:
			return 450
		type.AIRCRAFT, grade.NORMAL:
			return 150
		type.AIRCRAFT, grade.ELITE:
			return 300
