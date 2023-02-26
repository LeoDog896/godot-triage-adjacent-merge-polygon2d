extends StaticBody2D

onready var collision_polygon := $CollisionPolygon2D
export(int) var piece_scale = 30

func _ready():
	
	var polygon_a = PoolVector2Array([
		Vector2(1, 1) * piece_scale,
		Vector2(1, -1) * piece_scale,
		Vector2(-1, -1) * piece_scale,
		Vector2(-1, 1) * piece_scale
	])
	
	# 2 added to each x
	var polygon_b = PoolVector2Array([
		Vector2(3, 1) * piece_scale,
		Vector2(3, -1) * piece_scale,
		Vector2(1, -1) * piece_scale,
		Vector2(1, 1) * piece_scale
	])
	
	var combined_polygon = Geometry.merge_polygons_2d(polygon_a, polygon_b)
	
	collision_polygon.polygon = combined_polygon[0]
