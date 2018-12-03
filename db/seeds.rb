# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all

Game.create(javascript: "" "
var jsRuns = [];
var button = document.querySelector('.robot-icon');
var x = true;
button.addEventListener('click', Move);
function sound() {
  var audio = document.getElementById('audio');
  audio.play();
}
function Move() {
  sound();
  jsRuns.push('Move()');
  if (x) {
    document.querySelector('.robot-img').src =
      'https://res.cloudinary.com/dkfx04d8y/image/upload/v1543740626/rebo_L.png';
  } else {
    document.querySelector('.robot-img').src =
      'https://res.cloudinary.com/dkfx04d8y/image/upload/v1543740626/rebo_R.png';
  }
  x = !x;
}
    " "",
            html: "" "
  <div class='robot-game'>
      <button class='robot-icon'>Move</button>
      <img class='robot-img' src='https://res.cloudinary.com/dkfx04d8y/image/upload/v1543740626/rebo_R.png' >
      <audio id='audio' src='https://res.cloudinary.com/dkfx04d8y/video/upload/v1543835520/Short-electronic-background-music.mp3'></audio>
    </div>
     " " ",
            css: "" "
  .robot-game {
  position: fixed;
  border: 1px solid gray;
  background-image: url(https://res.cloudinary.com/dkfx04d8y/image/upload/v1543829131/nature.png);
  width: 600px;
  height: 600px;
}
.robot-img {
  position: absolute;
  width: 400px;
  height: 400px;
  top: 200px;
  right: 100px;
}
.robot-icon {
  position: absolute;
  top: 50px;
}
" "")

Game.create(
  javascript: "" "
var jumps = [];
var solution = [
  'jump()',
  'jump()',
  'jump()',
  'jump()',
  'jump()',
  'jump()',
  'jump()',
  'jump()',
  'jump()',
  'jump()',
  'jump()'
];

var button = document.querySelector('button');

button.addEventListener('click', jump);
function sound() {
  var audio = document.getElementById('audio');
  audio.play();
}
function jump() {
  jumps.push('jump()');
  sound();
  $('#rabitt-img').animate(
    {
      left: '+=25',
      top: '-=25'
    },
    500,
    function() {
      $('#rabitt-img').animate(
        {
          left: '+=25',
          top: '+=25'
        },
        500,
        function() {
          if (jumps.toString() === solution.toString()) {
            alert('Well done!');
          }
        }
      );
    }
  );
}
" "",
  html: "" "
<html>
  <head>
    <meta charset='utf-8' />
    <meta name='viewport' content='width=device-width' />
    <title>repl.it</title>
    <link href='style.css' rel='stylesheet' type='text/css' />
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
  </head>

  <body>
    <div id='Ribt-game'>
      <img id='rabitt-img' src='https://res.cloudinary.com/dkfx04d8y/image/upload/v1543823699/rabitt.png' />
      <img id='carrot-img' src='https://res.cloudinary.com/dkfx04d8y/image/upload/v1543823638/Carrot.png' />
      <audio id='audio' src='https://res.cloudinary.com/dkfx04d8y/video/upload/v1543838479/Lounge-deep-house-chillout-music-synth-theme-loop.mp3'></audio>
      <button type='button' id='jump-icon'>jump</button>
    </div>
   
    <script src='main.js'></script>
  </body>
</html>
" "",
  css: "" "
#Ribt-game {
  background-image: url(https://res.cloudinary.com/dkfx04d8y/image/upload/v1543823574/nat.png);
  height: 500px;
  width: 800px;
  position: fixed;
  border: 1px solid gray;
}
#jump-icon {
  left: 70px;
  top: 10%;
  position: absolute;
}
#rabitt-img {
  width: 100px;
  height: 100px;
  left: 70px;
  top: 69%;
  position: absolute;
}

#carrot-img {
  width: 70x;
  height: 70px;
  right: 70px;
  top: 70%;
  position: absolute;
}
" "",
)
