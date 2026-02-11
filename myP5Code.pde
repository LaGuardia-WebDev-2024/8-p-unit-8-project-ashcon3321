// image variables
var cherylImg;
var splithead1, splithead2, splithead3;
var bg;

// show perchance
var splitheadShow1 = 1;
var splitheadShow2 = 1;
var splitheadShow3 = 1;

//game result ig
var gameWon = false;

// image size
var imgW = 100;
var imgH = 100;

// image positions
var s1X = 80,  s1Y = 150;
var s2X = 250, s2Y = 150;
var s3X = 420, s3Y = 150;

//🟢setup Function - will run once
setup = function() {
    size(600, 400);

    bg = loadImage("https://wallpaperaccess.com/full/6195710.jpg");
    cherylImg = loadImage("CHERYL.png");

    splithead1 = loadImage("demodog.webp");
    splithead2 = loadImage("demodog.webp");
    splithead3 = loadImage("demodog.webp");
};

//🟢draw Function - will run on repeat
draw = function() {
    image(bg, 0, 0, width, height);

    // draw splitheads using custom function
    drawSplithead(splithead1, splitheadShow1, s1X, s1Y, imgW, imgH);
    drawSplithead(splithead2, splitheadShow2, s2X, s2Y, imgW, imgH);
    drawSplithead(splithead3, splitheadShow3, s3X, s3Y, imgW, imgH);

    // Cheryl follows mouse
    image(cherylImg, mouseX - 40, mouseY - 40, 80, 80);

    // win condition
    if (splitheadShow1 == 0 && splitheadShow2 == 0 && splitheadShow3 == 0) {
        textAlign(CENTER, CENTER);
        textSize(60);
        fill(255);
        text("YOU WIN!", width / 2, height / 2);
    }
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function() {
    // use custom functions to check clicks and hide splitheads
    if (splitheadShow1 && isClicked(s1X, s1Y, imgW, imgH)) {
        console.log("Cheryl beat splithead 1");
        splitheadShow1 = hideSplithead(splitheadShow1);
    }

    if (splitheadShow2 && isClicked(s2X, s2Y, imgW, imgH)) {
        console.log("Cheryl beat splithead 2");
        splitheadShow2 = hideSplithead(splitheadShow2);
    }

    if (splitheadShow3 && isClicked(s3X, s3Y, imgW, imgH)) {
        console.log("Cheryl beat splithead 3");
        splitheadShow3 = hideSplithead(splitheadShow3);
    }
};

// poop
function isClicked(x, y, w, h) {
    return mouseX > x && mouseX < x + w &&
           mouseY > y && mouseY < y + h;
}

// poop
function hideSplithead(showVar) {
    return 0;
}

// poop
function drawSplithead(img, show, x, y, w, h) {
    if (show) {
        image(img, x, y, w, h);
    }
}
