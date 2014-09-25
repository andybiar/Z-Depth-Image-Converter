int BW_ENCODED = 0;
int HUE_ENCODED = 1;

int FULL_FILE = 0;
int BOTTOM_HALF = 1;

// YOU SET THE FILENAME
String filename = "sample_hue.png";

// YOU SET THE INPUT TYPE, EITHER HUE_ENCODED OR BW_ENCODED
int fileInputType = HUE_ENCODED;

// YOU SET HOW MUCH OF THE FILE WE PROCESS
// EITHER BOTTOM_HALF OR FULL_FILE
int process = FULL_FILE;

public void setup() {
  
      PImage pixlz = loadImage(filename);
      size(pixlz.width, pixlz.height);
      image(pixlz, 0, 0);
      loadPixels();
      
      for (int i = (pixels.length / 2) * process; i < pixels.length; i++) {
        
        // CONVERT HUE ENCODING TO BRIGHTNESS ENCODING
        if (fileInputType == HUE_ENCODED) {
          colorMode(HSB, 255);
          float b = 0;
          if (brightness(pixels[i]) > 26) b = 255 - hue(pixels[i]);
          pixlz.pixels[i] = color(0,
                                  0,
                                  b);
        }
        
        // CONVERT BRIGHTNESS ENCODING TO HUE ENCODING
        else if (fileInputType == BW_ENCODED) {
          colorMode(RGB, 255);
          float r = red(pixels[i]);
          float s = 255;
          float b = 255;
        if (r < 26) {
          b = 0;
          s = 0;
        }
          colorMode(HSB, 255);
          pixlz.pixels[i] = color(255 - r, 
                      s,
                      b);
        }
      }
      
      pixlz.save("output_img.png");
      System.exit(0);
}
