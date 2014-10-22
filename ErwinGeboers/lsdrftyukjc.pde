class CircleCharaccter extends Creature {
float agitation = 0;

void setup() {
    size(1920, 1080);
}
void setAgitation(float newAgitation) {
    agitation = newAgitation;
}
 
void draw() {
    background(0);
    triangle(60, 150, 116, 40, 172, 150);
    stroke(255);        // every outline will be white

    noFill();           // the inside of a shape will not have a color
 setAgitation(map(mouseX, 0, width, 0, 1));

    float phase = frameCount * 0.025;     // determine a ‘phase’ for the sine function
              float phaseAddition= map(cos(phase), -1, 1, 0, 0.75);
              for(int i = 0; i < 10; i++){                                       // try changing 0.05 to something else to change the speed
    float radiusmovement = 75;                              // how big will the movement be?
    float x = cos(phase);                           // this will be a value between -1 and 1
    float radius = map(x, -1, 1, 40, 900);      // transform the value to a range of [40, 300]
    float lineWidth= map(x, -1, 1, 0, 7);
    float r = map(x, 0, 1, 0, 160);
    float g = map(x, -1, 1, 255, 160);
    float b = map(x, 1, 1, 255, 160);
    r = lerp(225, r, agitation);
    g = lerp(225, g, agitation);
    b= lerp(225, b, agitation);
    stroke(r, g, b);
    float LineWidthAddition = random(map(agitation, 0, 1, 0, 25));
    strokeWeight(lineWidth + LineWidthAddition);
    ellipse(width / 2, height / 2, radius, radius); // draw a circle with this radius
    phase = phase +phaseAddition;
    phaseAddition += 6207.865;
}
}
}
