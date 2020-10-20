String[][] strs = new String[5][2];
PFont font;

void setup() {
  size(1920, 1080);
  font = loadFont("http://vaibhav.wtf/Fonts/Product Sans Regular.ttf")
  textFont(font);
  frameRate(30);
  textAlign(CENTER);
  textSize(40);
  background(255);
  fill(0);

  strs[0][0] = "Hey there 👋";
  strs[0][1] = "My name is Vaibhav Kothi.";

  strs[1][0] = "I'm a Designer & B.Tech Student";
  strs[1][1] = "from Gujarat,IN.";

  strs[2][0] = "I've been creating stuff since past 4years!";
  strs[2][1] = "Illustrator | Photoshop | XD | AfterEffects";

  strs[3][0] = "Feel free to reach out to say hi!";
  strs[3][1] = "Scroll down to find my conatct details";
}

int i = 0;
boolean delete = false;
int s = 0;
int offset = 50;
int mainFontSize = 60;
int secondaryFontSize = 40;


void draw() {
  background(255);

  if (s < strs.length) {
    if ((strs[s][0].length() >= i || strs[s][1].length() >= i) && !delete) {
      if (strs[s][0].length() >= i) {
        textSize(mainFontSize);
        text(strs[s][0].substring(0, i), width/2, height/2 - offset);
      } else {
        textSize(mainFontSize);
        text(strs[s][0], width/2, height/2 - offset);
      }
      if (strs[s][1].length() >= i) {
        textSize(secondaryFontSize);
        text(strs[s][1].substring(0, i), width/2, height/2 + offset);
      } else {
        textSize(secondaryFontSize);
        text(strs[s][1], width/2, height/2 + offset);
      }
      i++;
    } else {
      if (!delete) {
        delay(1500);
      }
      delete = true;
    }


    if (delete) {

      if (i > 0) {
        if (i < strs[s][0].length()) {
          textSize(mainFontSize);
          text(strs[s][0].substring(0, i - 1), width/2, height/2 - offset);
        } else {
          textSize(mainFontSize);
          text(strs[s][0], width/2, height/2 - offset);
        }
        if (i < strs[s][1].length()) {
          textSize(secondaryFontSize);
          text(strs[s][1].substring(0, i - 1), width/2, height/2 + offset);
        } else {
          textSize(secondaryFontSize);
          text(strs[s][1], width/2, height/2 + offset);
        }
        i--;
      } else {
        delete = false;
        s++;
      }
    }
    //print(i + " ");
    //s++;
  }
}
