class Curve {
  ArrayList<PVector> path;
  PVector curr;
  int numBoids = 300;
  int boidCounter;
  Track track;

  Flock flock;
  Curve() {
    path = new ArrayList<PVector>();
    curr = new PVector();

    flock = new Flock();
    // Add an initial set of boids into the system
    for (int i = 0; i < numBoids; i++) {
      flock.addBoid(new Boid(width/2, height/2, random(.25, 3), random(1, 4), random(.09, .5), random(0, 10), random(.1, .9)));
    }
    track = new Track(path);
  }

  void addPoint( ) {
    if (angle > -TWO_PI) {
      path.add(curr);
      track.update(path);
    }
 
    if (boidsOn) {
      flock.run();
    }
  }

  void setX(float x) {
    curr.x = x;
  }

  void reset() {
    path.clear();
  }

  void setY(float y) {
    curr.y = y;
  }
  void show(float noiseWeight) {
    stroke(255, 50);
    strokeWeight(strokeW);
    noFill();
   
    curr = new PVector();
  }
}
