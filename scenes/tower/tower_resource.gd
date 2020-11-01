extends Resource
class_name Tower_Resource


export(TowerType.Type) var tower_type
export(int) var level
export(Texture) var texture
export(int) var attack_radius
export(int) var damage
export(int) var bullet_speed
export(int) var bullet_acceleration
export(int, 0, 100) var armor_piercing
export(float) var fire_cooldown
export(String) var description
export(bool) var locked

#optional attributes
export(int, 0, 100) var slow_effect
export(int, 0, 100) var damage_area
export(int) var cost


func get_readable_name():
	return TowerType.Type.keys()[tower_type]

