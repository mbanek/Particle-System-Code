ArrayList<Particle> particles = new ArrayList<Particle>();
int x = -2050;
import ddf.minim.*;

AudioPlayer player;
Minim minim;//audio context

void setup() {
    minim = new Minim(this);
  player = minim.loadFile("Chocolate Rain Music.mp3", 2048);
  player.play();
  colorMode(HSB, 360, 100, 100, 100);
  size(400, 600);
  particles.add(new Particle(width/2, 120));
}

void draw() {
  background(0);
  textSize(30);
  fill(100,100,150);
  x+=3;
  //Load Chocolate Rain Lyrics and Tay Zonday Picture
  text("Chocolate Rain                 Some stay dry and others feel the pain      Chocolate Rain                     A baby born will die before the sin      Chocolate Rain               The school books say it can't be here again     Chocolate Rain            The prisons make you wonder where it went   Chocolate Rain   Build a tent and say the world as dry   Chocolate Rain     Zoom the camera out and see the light   Chocolate Rain     Forecast to be falling yesterday Chocolate Rain Only in the past is what they say Chocolate Rain Raised your neighborhood insurance rates Chocolate Rain Makes us happy 'livin in a gay Chocolate Rain Made me cross the street the other day Chocolate Rain Made you turn your head the other way Chocolate Rain History quickly crashing through your veins Chocolate Rain Using you to fall back down again Chocolate Rain Seldom mentioned on the radio Chocolate Rain It's the fear your leaders car control Chocolate Rain Worse than swearing, worse than calling names Chocolate Rain Say it publicly, and you're insane Chocolate Rain No one wants to hear about it now Chocolate Rain Wish real hard it goes away somehow Chocolate Rain Makes the best of friends begin to fight Chocolate Rain But did they know each other in the light? Chocolate Rain Every February washed away Chocolate Rain Stays behind as colors celebrate Chocolate Rain The same crime has a higher price to pay Chocolate Rain The judge and jury swear it's not in the face Chocolate Rain Dirty secrets of economy Chocolate Rain Turns that body into GDP Chocolate Rain The bell curve blames the baby's DNA Chocolate Rain But test scores are how much the parents made Chocolate Rain Flippin' cars in France the other night Chocolate Rain Cleans the sewers out beneath Mumbai Chocolate Rain 'Cross the world and back it's all the same Chocolate Rain Angels cry and shake their heads in shame Chocolate Rain Lifts the ark of paradise in sin Chocolate Rain Which part do you think you're 'livin in? Chocolate Rain More than marchin' more than past and law Chocolate Rain Remake how we got to where we are" , -x, 30);
  PImage img;
  img=loadImage("Tay_Zonday_204.jpg");
  image(img, 60, 390);
  println(particles.size());
  particles.add(new Particle(width/2, height/5));

//Add particles until it reaches the end of life
  for (int i = particles.size ()-1; i >=0; i--) {
    Particle p = particles.get(i);
    p.display();
    p.update();
    if (p.life <= 0) {
      particles.remove(i);
    }
  }
}
void stop()
{
  player.close();
  minim.stop();
  super.stop();
}
