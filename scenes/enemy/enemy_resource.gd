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
	match type:
		EnemyTypes.ENEMY_TYPES.SOLDIER:
			if(EnemyTypes.GRADE==NORMAL): 
				return 30
			else return 60
		EnemyTypes.ENEMY_TYPES.COMMANDO:
			if(EnemyTypes.GRADE==NORMAL): 
				return 80
			else return 120
		EnemyTypes.ENEMY_TYPES.ARMORED_TRANSPORT:
			if(EnemyTypes.GRADE==NORMAL): 
				return 70
			else return	100
		EnemyTypes.ENEMY_TYPES.TANK:
			if(EnemyTypes.GRADE==NORMAL): 
				return	250
			else return	750
		EnemyTypes.ENEMY_TYPES.AIRCRAFT:
			if(EnemyTypes.GRADE==NORMAL): 
				return	150
			else return	300