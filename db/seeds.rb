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
  position: relative;
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
            $('#carrot-img').hide();
            setTimeout(function(){ location.reload(); }, 3000);
          }
        }
      );
    }
  );
}
" "",
  html: "" "
    <div id='Ribt-game'>
      <img id='rabitt-img' src='https://res.cloudinary.com/dkfx04d8y/image/upload/v1543823699/rabitt.png' />
      <img id='carrot-img' src='https://res.cloudinary.com/dkfx04d8y/image/upload/v1543823638/Carrot.png' />
      <audio id='audio' src='https://res.cloudinary.com/dkfx04d8y/video/upload/v1543838479/Lounge-deep-house-chillout-music-synth-theme-loop.mp3'></audio>
      <button type='button' id='jump-icon'>jump</button>
    </div>
" "",
  css: "" "
#Ribt-game {
  background-image: url(https://res.cloudinary.com/dkfx04d8y/image/upload/v1543823574/nat.png);
  height: 500px;
  width: 800px;
  position: relative;
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

Game.create(
  javascript: "" "
  var $keys = $('.octave div');

$keys.on('mouseover', function() {
  const pitch = $(this).data('pitch');
  const context = new (window.AudioContext || window.webkitAudioContext)();
  const oscillator = context.createOscillator();
  oscillator.type = 'sine';
  oscillator.frequency.value = pitch;
  oscillator.connect(context.destination);
  oscillator.start();
});

$keys.on('mouseout', function() {
  location.reload();
});
  " "",
  html: "" "
   <div class='octave'>
      <div class='key key1' data-pitch='261.6256'></div>
      <div class='key key2' data-pitch='293.6648'></div>
      <div class='key key3' data-pitch='329.6276'></div>
      <div class='key key4' data-pitch='349.2282'></div>
      <div class='key key5' data-pitch='391.9954'></div>
      <div class='key key6' data-pitch='440.0000'></div>
      <div class='key key7' data-pitch='493.8833'></div>

      <div class='blackKey blackKey1' data-pitch='277.1826'></div>
      <div class='blackKey blackKey2' data-pitch='311.1270'></div>
      <div class='blackKey blackKey3' data-pitch='369.9944'></div>
      <div class='blackKey blackKey4' data-pitch='415.3047'></div>
      <div class='blackKey blackKey5' data-pitch='466.1638'></div>
    </div>
  " "",
  css: "" "
  .octave {
  height: 200px;
  width: 500px;
  background: dodgerblue;
  display: flex;
  position: relative;
}

.key {
  width: calc(100% / 7);
  height: 100%;
  background: white;
  border: 1px solid black;
}

.key:hover {
  background: gray;
}

.blackKey {
  position: absolute;
  height: 50%;
  width: calc(100% / 12);
  background: black;
  transform: translateX(-50%);
}

.blackKey:hover {
  background: gray;
}

.blackKey1 {
  left: calc(100% / 7);
}

.blackKey2 {
  left: calc(100% / 7 * 2);
}

.blackKey3 {
  left: calc(100% / 7 * 4);
}

.blackKey4 {
  left: calc(100% / 7 * 5);
}

.blackKey5 {
  left: calc(100% / 7 * 6);
}
  " "",
)
