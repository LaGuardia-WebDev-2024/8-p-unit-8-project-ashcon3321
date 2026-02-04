
PImage pyramidImg;
 

//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    
     size(400, 400);
     pyramidImg = loadImage("https://lh3.googleusercontent.com/drive-storage/AJQWtBNPuGe1TBxQ3JKt8GkVW71Aitj3TGwMlG6mOmWNgxVXKeKuvsXifaVj5DhWRUXNb9YUyika_pHjrxo2QUo31W8VOUaVVoh-s1DAJ9bGKyUH1ElA=w1920-h953?auditContext=forDisplay");

     
    
}
};

//🟢draw Function - will run on repeat
draw = function(){

  // james follows mouse
  image(pyramidImg, mouseX - 20, mouseY - 20, 120, 120);


};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("🐠", fishX, fishY);
};




