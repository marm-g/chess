extends Spatial

var active_piece = false

func select_tile(tile):
	print(tile.name)
	if active_piece:
		print("time to move piece!")
		handle_piece_move(active_piece, tile)
		active_piece = false

func select_piece(piece):
	print(piece.name)
	if active_piece && piece == active_piece:
		active_piece = false
	elif active_piece && piece != active_piece:
		print("capture logic goes here")
	else:
		active_piece = piece
		
	# DEBUG CODE HERE
	if active_piece:
		print("selected piece: ")
		print(active_piece.name)
	else:
		print("no active piece")


func handle_piece_move(piece, tile):
	var scale = piece.scale;
	# NOTE(reno): I don't totally grok why we need the extra * 2 at the end
	# TODO(reno): the translation is ever so slightly off
	var movement = -2 * scale.z * 2;
	var x_diff = tile.translation.x - piece.translation.x;
	var z_diff = tile.translation.z - piece.translation.z;
	var x_mov = x_diff * scale.x * 2;
	var z_mov = z_diff * scale.z * 2;
	print(x_diff)
	print(z_diff)
	piece.translate(Vector3(x_mov, 0, z_mov))
