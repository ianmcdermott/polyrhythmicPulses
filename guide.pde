class Guide {
  float cy;
  float cx;

  float x ;
  float y ;
  boolean reversed;

  Guide(boolean rev) {
    reversed = rev;
  }
  void update(float i) {
    if (reversed) {
      cy = height/2; // w + i * w + w/2;
      cx = width/2; // w/2 - i*w;
    } else {
      cy = height/2; //w/2;
      cx = width/2; //w + i * w + w/2 - i*w;
    }

    x = r*cos(angle * (i+1) - HALF_PI);
    y = r*sin(angle * (i+1)  - HALF_PI);
  }
  
}
