int ballCount = 100;

float[] ballX = new float[ballCount];
float[] ballY = new float[ballCount];
float[] xSpeed = new float[ballCount];
float[] ySpeed = new float[ballCount];
float[] size = new float[ballCount];
float[] r = new float[ballCount];
float[] g = new float[ballCount];
float[] b = new float[ballCount];

void setup() {
  size(800, 800);
  background(255);
  for (int i = 0; i < ballCount; i++) {
    ballX[i] = random(width);
    ballY[i] = random(height);
    xSpeed[i] = random(-5, 10);
    ySpeed[i] = random(-5, 10);
    size[i] =random(10, 50);
    r[i]=random(255);
    b[i]=random(255);
    g[i]=random(255);
  }
}

void draw() {

  background(255);

  for (int i = 0; i < ballCount; i++) {

    ballX[i] += xSpeed[i];
    if (ballX[i] < 0 || ballX[i] > width) {
      xSpeed[i] *= -1;
    }

    ballY[i] += ySpeed[i];
    if (ballY[i] < 0 || ballY[i] > height) {
      ySpeed[i] *= -1;
    }

    fill(r[i], g[i], b[i]);
    ellipse(ballX[i], ballY[i], size[i], size[i]);
  }
}
