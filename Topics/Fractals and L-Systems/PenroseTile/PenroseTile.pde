/** 
 * Penrose Tile L-System 
 * by Geraldine Sarmiento.
 *  
 * This example was based on Patrick Dwyer's L-System class. 
 */

PenroseLSystem ds;

void setup() {
  size(800, 800);
  ds = new PenroseLSystem();
  ds.simulate(5);
}

void draw() {
  background(0);
  ds.render();
}






