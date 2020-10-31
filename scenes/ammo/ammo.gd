extends KinematicBody2D
class_name Ammo

onready var tween = $Tween

var speed = 300
var acceleration = 200
var shot_direction := Vector2()
var travelled_distance = 0
var damage = 0

func _ready():
	pass

func load_tower_resource(tower_resource: Tower_Resource):
	speed = tower_resource.bullet_speed
	acceleration = tower_resource.bullet_acceleration
	damage = tower_resource.damage

func _process(delta):
	if !shot_direction:
		return
	speed += acceleration * delta
	travelled_distance += speed * delta
	if travelled_distance > 1000 and !tween.is_active():
		disappear()
	var collision_data = move_and_collide(speed * shot_direction * delta)

	if collision_data and collision_data.collider.is_in_group("enemies"):
		explosion(collision_data.collider)


func _on_Explosion_animation_finished():
	yield($AudioStreamPlayer2D, "finished")
	queue_free()


func disappear():
	tween.interpolate_property(self, "scale", scale, Vector2(), 1.0, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	tween.start()
	yield(tween, "tween_completed")
	queue_free()


func explosion(collider : KinematicBody2D):
	var enemy: Enemy = collider as Enemy
	if enemy:
		enemy.take_damage(damage)
	set_process(false)
	$AudioStreamPlayer2D.play()
	$Sprite.visible = false
	$CollisionShape2D.disabled = true
	$Explosion.visible = true
	$Explosion.play()
