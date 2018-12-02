# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all

Game.create(
  javascript: "" "
var jsRuns = [];

  var button = document.querySelector(\".game-target\");
var x = true ;
button.addEventListener('click', Move)
function Move(){
    console.log('Test')
  jsRuns.push(\"Move()\");
  document.querySelector(\"#output\").innerHTML = jsRuns.join(\"<br>\");
if(x){
  document.querySelector(\".robot-img\").src=\"https://res.cloudinary.com/dkfx04d8y/image/upload/v1543748671/RRight.png\";
}else{
   document.querySelector(\".robot-img\").src=\"https://res.cloudinary.com/dkfx04d8y/image/upload/v1543748670/RLeft.png\";
}
x = !x;
}
    " "",
  html: "" "
  <div class='robot-game'>
    <button class=\"game-target\">Move</button>
    </div>
    <div>
    <img class=\"robot-img\"src=\"https://res.cloudinary.com/dkfx04d8y/image/upload/v1543748671/RRight.png\">
    </div>
    <div id=\"output\"></div>
    </div>
    " "",
  css: "" "
  .robot-game{
   
  }
 .robot-img{
  width: 600 px;
  height:600px ;
 position: absolute;
  bottom:50%;
  right:50%;
  top: 50%;
}
" "",
)
