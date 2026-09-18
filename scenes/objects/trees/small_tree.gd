extends Sprite2D

@onready var hurt_component: HurtComponent = $HurtComponent
@onready var damage_component: DamageComponent= $DamageComponent

func _ready() -> void:
	hurt_component.hurt.connect(on_hurt)
	
func on_hurt(hit_damage: int) -> void:
	damage_component.apply_damage(hit_damage)
func on_max_damage_reached() -> void:
	print("max damage reached")
	queue_free()
