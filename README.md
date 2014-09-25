Z-Depth-Image-Converter
=======================

A Z-depth image is an encoding of the distance between a camera and objects in a scene. The standard method of encoding depth is a black and white image, where darker pixels are further away from the camera than lighter ones. Like this.

![BW-Encoded Depth Image](http://i.imgur.com/EVO2XIs.jpg)

The RGBD Toolkit and my Peek RGBD Shader are the only known that don't follow this standard method of encoding, but we have our reasons. James George discovered that when rendering a mesh from a Z-depth image, it can be better to encode the depth data as the hue of the image, like this.

![Hue-Encoded Depth Image](http://i.imgur.com/de82Kvt.png)

This is a script that allows you to convert an image from one encoding to the other. It should be pretty self-explanatory from the comments for anyone familiar with processing.

Tweet at me if you have any questions/shout-outs. @andybiar
