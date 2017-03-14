// need Gif animation lib 
// https://github.com/01010101/GifAnimation

import gifAnimation.*; // importing GIF library

Gif loopingGif; // Gif variable to store gif image


public void setup() {
  size(400, 400);
 
  loopingGif = new Gif(this, "cubes.gif"); //load gif image
  loopingGif.loop(); // loop comand to play the gif

}

void draw() {
  background(0);
  image(loopingGif, 0, 0); // showing the gif on the screen  
}