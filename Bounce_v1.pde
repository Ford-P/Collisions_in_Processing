float bounceX;
float bounceY;
float bounceXSpeed;
float bounceYSpeed;
float bounceRadius;
boolean bounceBooleanX;
boolean bounceBooleanY;

float centreBoxX;
float centreBoxY;
float centreBoxWidth;
float centreBoxHeight;

void setup() {
  size(400,400);
  
  bounceX = 50;
  bounceY = 100;
  bounceXSpeed = 1;
  bounceYSpeed = 2;
  bounceRadius = 25;
  bounceBooleanX = false;
  bounceBooleanY = false;
  
  centreBoxX = 100;
  centreBoxY = 100;
  centreBoxWidth = 100;
  centreBoxHeight = 100;
  
}

void draw() {
  background(255);
  ellipse(bounceX,bounceY,bounceRadius*2,bounceRadius*2);
  rect(centreBoxX,centreBoxY,centreBoxWidth,centreBoxHeight);
  
  
  if (bounceX + bounceRadius + bounceXSpeed > centreBoxX && 
      bounceX - bounceRadius < centreBoxX + centreBoxWidth && 
      bounceY + bounceRadius > centreBoxY && 
      bounceY - bounceRadius < centreBoxY + centreBoxHeight) {
    bounceXSpeed *= -1;
  }
  else if (bounceX - bounceRadius < 0 || bounceX + bounceRadius > width) {
    bounceXSpeed *= -1;
  }  

  if (bounceX + bounceRadius > centreBoxX && 
      bounceX - bounceRadius < centreBoxX + centreBoxWidth &&
      bounceY + bounceRadius + bounceYSpeed > centreBoxY &&
      bounceY + bounceYSpeed - bounceRadius < centreBoxY + centreBoxHeight) {
    bounceYSpeed *= -1;
  }
  else if (bounceY - bounceRadius < 0 || bounceY + bounceRadius > height) {
    bounceYSpeed *= -1;
  }
  
  bounceX += bounceXSpeed;
  bounceY += bounceYSpeed;
  
  println(bounceY);
  println(bounceX);
  
}
