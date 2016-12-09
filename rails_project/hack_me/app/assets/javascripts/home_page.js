
var socket = io.connect('http://localhost:8080/game/new');
socket.on('connect', function(){
  console.log('user connected');
});

//Socket created when new game is created.

//Socket is created when a game starts i.e. player 2 enters.
function game_start(game){
  //NEED TO DO FOR CHANGING STATE.
  $.ajax({
    type: "PUT",
    url: "/games/"+game,
    async: false,
    // context: ,
    success: function(){
      alert('game is starting');
    }
  });

  socket.emit("player_2_ready", game);
  window.location.href = window.location.href + 'games/'+ game ;

}

//For player 2.
  socket.on('join_game_play', function(game){
    alert(game + 'has been started');
  });


//For player 1.
  socket.on('ack_new_game', function(message){
    alert(message);
  });

