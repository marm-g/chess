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
	print(piece.translation)
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
	var x_diff = tile.translation.x - piece.translation.x;
	var z_diff = tile.translation.z - piece.translation.z;
	piece.translate(Vector3(x_diff, 0, z_diff))
