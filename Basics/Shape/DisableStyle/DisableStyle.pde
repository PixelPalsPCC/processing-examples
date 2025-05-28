/**
 * Disable Style 
 * by George Brower.
 * 
 * Shapes are loaded with style information that tells them how
 * to draw (e.g. color, stroke weight). The disableStyle() 
 * method of PShape turns off this information so functions like
 * stroke() and fill() change the SVGs color. The enableStyle()
 * method turns the file's original styles back on.
 */

PShape bot;
PImage img;

void setup() {
  size(1200, 1200);
  // The file "bot1.svg" must be in the data folder
  // of the current sketch to load successfully
  bot = loadShape("bot1.svg");
  img = loadImage("bot1.png");
  noLoop();
} 

void draw() {
  background(102);
  
  // Draw left bot
  bot.disableStyle();  // Ignore the colors in the SVG
  int x = (int) mouseX;
  int y = (int) mouseY;
  fill(x, y, 0);  // Set the SVG fill to blue
  stroke(255);  // Set the SVG fill to white
  bot.scale(3.0);
  shape(bot, 20, 25, 300, 300);

  // Draw right bot
  bot.enableStyle();
  shape(bot, 320, 25, 300, 300);
}
