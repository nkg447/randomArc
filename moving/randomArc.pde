int centerX, centerY;
float radius, lineWidth;
float x, y;
int start, end;
int circleCount = 0;
boolean counter=true;
int speed = 1;
void setup() {
  
  size(1000,600);
  
  centerX = width/2;
  centerY = height/2;
  radius = 10;
  lineWidth = 1;
  start = 0;
  end=int(random(360));
  //println("start - "+width+" end - "+height);
  strokeWeight(lineWidth);
  speed = 8;
  noFill();
  //println(displayWidth);
  
}

void draw() {

  if (circleCount<40) {
    if (start>(end+speed) || start<(end-speed)) {
      //println(start);
      arc(centerX, centerY, radius, radius, radians(start), radians(start+speed));
      if (counter) {
        start+=speed;
        if (start >= 360)
          start=0;
      } else {
        if (start <= 0.0)
          start=360;
        start-=speed;
      }
    }
    else if(start!=end){
      arc(centerX, centerY, radius, radius, radians(start), radians(end));
      start = end;
    }
    else {
      //line(x,y,x+lineWidth,y+lineWidth);
      if(!counter)
        start = end+speed;
      else
        start = end-speed;
      
      circleCount++;
      end=int(random(355));
      //println("start - "+start+" end - "+end+" counter - "+counter);
      counter=!counter;
      radius = radius+lineWidth*4;
      lineWidth+=0.5;
      strokeWeight(lineWidth);
      
      
    }
  }
}

void mousePressed(){
  background(255,255,255);
  centerX = width/2;
  centerY = height/2;
  radius = 10;
  lineWidth = 1;
  start = 0;
  end=int(random(360));
  //println("start - "+width+" end - "+height);
  strokeWeight(lineWidth);
  speed = 8;
  noFill();
}