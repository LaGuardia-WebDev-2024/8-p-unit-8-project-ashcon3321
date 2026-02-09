// 🎯 image variables
var cherylImg;
var img1, img2, img3;
var bg;

// 🎯 visibility flags
var show1 = true;
var show2 = true;
var show3 = true;

// 🎯 game state
var gameWon = false;

// 🎯 image size
var imgW = 100;
var imgH = 100;

// 🎯 image positions
var img1X = 80,  img1Y = 150;
var img2X = 250, img2Y = 150;
var img3X = 420, img3Y = 150;




//🟢setup Function - will run once
setup = function() {

    size(600, 400);

    bg = loadImage("https://wallpaperaccess.com/full/6195710.jpg");

    cherylImg = loadImage("CHERYL.png");
    img1 = loadImage("demodog.webp");
    img2 = loadImage("demodog.webp");
    img3 = loadImage("demodog.webp");
};

//🟢draw Function - will run on repeat
draw = function(){


    // check win condition
    if (!show1 && !show2 && !show3) {
        gameWon = true;
    }

    if (gameWon) {
        // win screen hehehe
        image(bg, 0, 0, width, height);
        fill(255);
        textAlign(CENTER, CENTER);
        textSize(60);
        text("YOU WIN!", width / 2, height / 2);
        return; // stop drawing the game
    }

    // game screen!!!
    image(bg, 0, 0, width, height);

    if (show1) image(img1, img1X, img1Y, imgW, imgH);
    if (show2) image(img2, img2X, img2Y, imgW, imgH);
    if (show3) image(img3, img3X, img3Y, imgW, imgH);

    image(cherylImg, mouseX - 40, mouseY - 40, 80, 80);

     

};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){



    if (
        show1 &&
        mouseX > img1X && mouseX < img1X + imgW &&
        mouseY > img1Y && mouseY < img1Y + imgH
    ) {
        show1 = false;
    }

    if (
        show2 &&
        mouseX > img2X && mouseX < img2X + imgW &&
        mouseY > img2Y && mouseY < img2Y + imgH
    ) {
        show2 = false;
    }

    if (
        show3 &&
        mouseX > img3X && mouseX < img3X + imgW &&
        mouseY > img3Y && mouseY < img3Y + imgH
    ) {
        show3 = false;
    }
};
