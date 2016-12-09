var http = require('http'),
	server = http.createServer(function(request, response) {}),
	io = require('socket.io'),
    redis = require('redis').createClient();

server.listen(8080);
// Create a Socket.IO instance, passing it our server
var listener = io.listen(server);

var game_rooms = [];

//Todo io to listener ?

redis.subscribe('rooms');

//Game room - connection is made.
//Still have a doubt if this redis is working.
var game_room_creation = listener.of('/game/new')
	.on('connection', function(socket){
		redis.on('new_game', function(channel, message){
			game_rooms.push(JSON.parse(message).game);
			console.log(JSON.parse(message).game);
		});

	socket.on('new_game', function(game){
		socket.join(game);
		socket.emit('ack_new_game', 'You have created a game in socket with id:' + game );
			// Check how redis and socket room is connected ----------------
				// socket.room = 	JSON.parse(message).game; //Need to check.
				// socket.user = JSON.parse(message).user;
				// socket.emit('updatechat', 'Socket server:', 'you have connected to');
				// socket.broadcast.to(socket.room).emit(user + 'has joined')
	});

	socket.on('player_2_ready', function(game){
		socket.join(game);	
		
		console.log(listener.of('/game/new').sockets);

		socket.broadcast.to(socket.room).emit('join_game_play', game);
	});
			
});


var game_room = listener.of('/game')
	.on('connection', function(socket){ // NEED Check if method has to be added.	
		console.log('game_room');
		
		socket.on('enter_room', function(socket, game){
			socket.join(game);
			socket.emit('ack_new_game', 'Game starts when player 2 enters');
		});

		socket.on('player_2_ready', function(game){
			socket.join(game);	
			socket.emit('update_game', 'Socket: You have been connected. Game starts now');			
			socket.broadcast.to(socket.room).emit('game_starts', game);			
		});

	// TODO.
	socket.on('send_command', function(mouse, player){
		// we tell the client to execute 'update_board' with 2 parameters
		if (true) {
    		socket.broadcast.to(socket.room).emit('update_board', mouse, player); //NEED 
		} 
		else {
			//To everyone in room.
			io.sockets.in(socket.room).emit('game_done');
			//To sender only.
			socket.emit('game_completion');
		}
	});

	socket.on('disconnect', function(){
		socket.broadcast.to(socket.room).emit('user_disconnect', socket.user + 'has left');
		socket.leave(socket.room);
	});
//
});
