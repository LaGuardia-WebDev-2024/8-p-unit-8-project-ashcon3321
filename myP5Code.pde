// Images guys woah
var cherylImg;
var splitHeadImg;

//🟢setup Function - runs once
setup = function() {
    size(1000, 600);
    
    cherylImg = loadImage("CHERYL.png");
    splitHeadImg = loadImage("demodog.webp");
};


var splitHeadMove1 = 0;
var splitHeadMove2 = 0;
var splitHeadMove3 = 0;
var splitHeadMove4 = 0;

//🟢draw Function - runs on repeat
draw = function(){

  background(255,255,255,0);

  // Cheryl
  drawCheryl(mouseX, mouseY);
  
  

  // Large SplitHead doggies
  splitHeadMove1 ++;
  drawSplitHead(1700 - splitHeadMove1, 300, 150);
  if(splitHeadMove1 > 1500){
    splitHeadMove1 = 0;
  }

  // Medium SplitHead doggies
  splitHeadMove2 ++;
  drawSplitHead(1000 - splitHeadMove2, 200, 100); 
  drawSplitHead(1300 - splitHeadMove2, 250, 100);
  if(splitHeadMove2 > 1500){
    splitHeadMove2 = 0;
  }

  // Small SplitHead doggies
  splitHeadMove3 ++;
  drawSplitHead(1500 - splitHeadMove3, 400, 80);
  drawSplitHead(1200 - splitHeadMove3, 300, 80);
  drawSplitHead(1000 - splitHeadMove3, 500, 80);
  if(splitHeadMove3 > 1500){
    splitHeadMove3 = 0;
  }

  // Small SplitHead doggies

  splitHeadMove4 ++;
  drawSplitHead(1200 - splitHeadMove4, 100, 80);
  drawSplitHead(1100 - splitHeadMove4, 400, 80);
  drawSplitHead(1300 - splitHeadMove4, 500, 80);
  if(splitHeadMove4 > 1500){
    splitHeadMove4 = 0;
  }
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

}


// drawCheryl 
var drawCheryl = function(x, y){
  image(cherylImg, x, y, 120, 120);
};

// drawSplitHead
var drawSplitHead = function(x, y, size){
  image(splitHeadImg, x, y, size, size);
};

// poop
var drawPoop = function (poopX, poopY){
  fill(147, 197, 114);
  textSize(100);
  text("⌇", poopX, poopY);
};
