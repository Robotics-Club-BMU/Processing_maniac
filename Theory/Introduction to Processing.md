![img a](https://socialify.git.ci/Robotics-Club-BMU/Processing_maniac/image?language=1&owner=1&theme=Light)

# Processing - How to Make the most out of it

![img 1](https://upload.wikimedia.org/wikipedia/commons/c/cb/Processing_2021_logo.svg)

## **An Overview**

Rapid prototyping and the ability to produce quick visual results are features of many programming languages and frameworks. However, some take it even further by making these their primary goals. Processing, a programming language based on Java, allows its users to code within the context of visual arts and has been designed from the ground up to provide instant visual feedback.

This article will provide an introduction to Processing and some insights into its inner mechanics.

You are struggling with boredom, and itching to use your creativity. You want to build something, something visually impressive, something artsy. Or maybe you want to learn programming and make something impressive as soon as possible. If so, then the Processing language is the way to go.

Amongst  all the programming languages you would have worked with so far, Processing will be , without a doubt , one of the most entertaining ones.
It is a straightforward language - easy to learn, understand and use, yet it is very powerful. It is almost like you are painting on an empty canvas with lines of code. There are no rigid rules or guidelines whatsoever to limit your creativity, the only limit is your imagination.

Processing has a simple and easy to use IDE (i.e. a code editor),  it is the only thing you’ll need to download & install to follow. You can download it from [here](https://processing.org/download).


## What is the Processing Language?

Processing is a visual programming language that allows you to sketch with codes, so to speak. However it is not exactly a programming language on its own, it is what they call a “Java-esque” programming language, which means the language is built on top of the Java platform, but is not exactly Java per se. It is based on Java and all your code gets preprocessed and converted directly into Java code when you hit the run button. Java’s PApplet class is the base class for all Processing sketches. To give an example, let’s take a couple of basic processing code blocks:

public void setup() {
  
  // setup codes goes here

}

public void draw() {
  
  // draw codes goes here

}

These code blocks will be converted into something like this:

#### public class ExampleFrame extends Frame {
        
        public ExampleFrame() {
            super("Embedded PApplet");

            setLayout(new BorderLayout());
            PApplet embed = new Embedded();
            add(embed, BorderLayout.CENTER);

            embed.init();
     }
}

public class Embedded extends PApplet {
   
    public void setup() {
      // setup codes goes here
    }
    public void draw() {
      // draw codes goes here
    }
    
}

You can see that the processing code block was wrapped with a class that extends from Java’s PApplet. Therefore, all the classes you define in your processing code, if any, will be treated as inner classes.

The fact that Processing is Java based gives us a lot of advantages, especially if you are a Java developer. Not only is the syntax familiar, but it also gives you the ability to do things like embedding Java code, libraries, JAR files in your sketches, using your Processing applets directly in your Java applications, defining classes and using standard data types such as int, float, char and so on. You can even write your Pocessing code directly from Eclipse, if you want to spend some time to set it up. One thing you can’t do is use AWT or Swing components in your Processing sketches, because they conflict with the looping nature of Processing. 

## Fundamentals of Processing

Processing code consists of two main parts, setup and draw blocks. Setup block runs once when the code gets executed, and the draw blocks runs continuously. The main idea behind Processing is, what you write within the draw block will be executed 60 times per second from top to bottom, until your program terminates

## Processing IDE

![IDE](https://uploads.toptal.io/blog/image/91818/toptal-blog-image-1448633127924-e3fb6e37d307575b33158f9bccba4358.jpg)

As you’d expect, run and stop buttons do what they suggest. When you click on the run button, your code will get compiled and executed. By nature, processing programs never get terminated, they run forever and ever until they get disturbed. You can terminate it programmatically, however if you don’t, you can use the stop button.

The button that looks like a butterfly on the right of the run & stop is the debugger. Using the debugger needs a whole other article dedicated to it. It is out of the scope of this article, so you can ignore it for now. The dropdown next to debugger button is where you add / set mods. Mods provide you some certain functionality, allow you to write code for Android, allow you to write code in Python, and so on and so forth. Mods are also out of the scope, so you can keep it in the default Java mode and ignore it as well.

The button that looks like a butterfly on the right of the run & stop is the debugger. Using the debugger needs a whole other article dedicated to it. It is out of the scope of this article, so you can ignore it for now. The dropdown next to debugger button is where you add / set mods. Mods provide you some certain functionality, allow you to write code for Android, allow you to write code in Python, and so on and so forth. Mods are also out of the scope, so you can keep it in the default Java mode and ignore it as well.

The code editor, it is simply where you write your code. There are line numbers(!) Older versions of Processing didn’t have that , but newer version are equipped wth it.

The black box below is the console. It is used  to print out stuff for quick debugging purposes. The errors tab next to the console is where your errors will appear. This is also a new useful feature that came with Processing 3.0. In the older versions, the errors were printed to the console and it was hard to keep track of them.

## Setup Block

As stated before, setup blocks get executed once when the program starts. You can use it for making configurations and for things that you’d like to run only once, for instance, loading images or sounds. Here is an example setup block. 

public void setup() {

  // Size of our sketch will be 800x600, 
 
  // and use the P2D rendering engine.
  
  size(800, 600, P2D);
  
  // We could have used this function instead of size()
  
  // fullScreen(P2D);
  
  // The background color of our sketch will be black
  
  // by default, unless specified otherwise
  
  background(0);
  
  // We could have used this to set a background image.
  
  // Note that size of our sketch should be the same as the image.
  
  // background(loadImage("test.jpg"));
  
  // Shapes and objects will be filled with red by default,
  
  // unless specified otherwise.
  
  fill(255,0,0);
  
  // Shaped and objects will have a white border by default,
  
  // unless specified otherwise.
  
  stroke(255);

}

The different functions used in the code are explained below:

**size()** - As the name suggests, this function is used to configure the size of our sketch. It has to be in the first line of the setup code block. It could be used in the following forms:

- size(width,height);

- size(width, height, renderer);

The width and height values could be given in pixels. Size function accepts a third parameter, renderer, which is used to set which rendering engine our sketch will use. By default, the renderer is set to P2D. The available renderers are P2D (Processing 2D), P3D (Processing 3D, should be used if your sketches will include 3D graphics) and PDF (2D graphics are drawn directly into an Acrobat PDF file.)
P2D and P3D renderers make use of OpenGL compatible graphics hardware.

**fullScreen()** - As of Processing 3.0, fullScreen function can now be used instead of the size() function. Just like the size() function, it should be in the first line of the setup block as well. The usage is as follows:

fullScreen();
fullScreen(display);
fullScreen(renderer);
fullScreen(display, renderer);

If you use it without any parameters, your processing sketch will simply run in fullscreen, and will run on your main display. The ‘display’ parameter is used to set on which display your sketch will run. For example if you connect external monitors to your computer, you can set the display variable to 2 (or 3, 4 etc.) and your sketch will run there. The ‘renderer’ parameter is as explained at the size() part above.

## Settings Block

This is another feature that is introduced with the new release of Processing. It is a code block, just like setup and draw. It is useful when you want to define size() or fullScreen() methods with variable parameters. It is also necessary to define size() and other styling properties such as smooth() in this code block if you are using any environment other than Processing’s own IDE, such as Eclipse. 

## Draw Block

Draw block is where all the magic happens. It is the heart of your program, beating 60 times a second. This code block houses all your code logic. All your shapes, objects etc. will be written in here.
We can print anything to the console by using the print() or println() methods. Print methods only print to the console, println however prints and appends a newline at the end, so each println() will print in separate rows.

## Drawing Shapes & Texts

![img](https://uploads.toptal.io/blog/image/91822/toptal-blog-image-1448633489960-773f96a1286d06000527d184b9212638.jpg)

Before we begin, we should understand the **coordinate system**. In Processing, you determine the coordinates of every object you draw on the screen. The coordinate system is in pixels. The origin (ie. starting point) is the top left corner, you should give your coordinates relative to that point. Another thing you should know is, each shape has a different reference point. For example, rect() has its top left corner as a reference point. For ellipse(), it is the center. These reference points can be changed with methods like rectMode() and ellipseMode().

Here are some shapes you should be familiar with (for all values given below, ‘x’ and ‘y’ means x and y coordinates in pixels, ‘w’ and ‘h’ means width and height values also in pixels):

- **point()** - Simple point, only needs a single coordinate. Usage:

    point(x, y)

    point(x, y, z) - In case you are using 3 dimensions.

- **line()** - For creating a line. You can create a line with only a starting and ending point. Usage:

    line(x1, y1, x2, y2)

    (x1, y1, z1, x2, y2, z2) - In case you are using 3 dimensions.

- **triangle()** - For creating a triangle. Usage: triangle(x1, y1, x2, y2, x3, y3)

- **quad()** - For creating a quadrilateral. Usage: quad(x1, y1, x2, y2, x3, y3, x4, y4)

- **rect()** - For creating a rectangle. The reference point is top left corner by default (refer to the figure). Here is the usage:

    rect(x, y, w, h)

    rect(x, y, w, h, r) - ‘r’ mean the radius in pixels to make the corners rounded.
    
    rect(x, y, w, h, tl, tr, br, bl) - Radius for top left, top right, bottom right, bottom left corners respectively. This is also in pixels.

- **ellipse()** - For creating an ellipse shape. This is also used to create a circle, same width and height values should be given. The reference point for this shape is the center by default (refer to the figure). Here is the usage:

    ellipse(x, y, w, h)

- **arc()** - Draw an arc. Usage:

    arc(x, y, w, h, start, stop) - ‘start’ and ‘stop’ is used to determine the angle to start and stop drawing the arc. Values are in radians. Constants such as “PI, HALF_PI, QUARTER_PI and TWO_PI” can be used.

    arc(x, y, w, h, start, stop, mode) - ‘mode’ variable is to determine the rendering style of the arc (string). Available options are “OPEN, CHORD, PIE”. OPEN will leave the non-drawn parts borderless. CHORD will complete the non-drawn parts with a border. PIE will make your arc look like a pie chart.

Displaying texts on the screen is similar to displaying shapes, the basic idea is that you determine a coordinate at which you want your text to be displayed. There is however more to handling texts. You will have more control over your texts after the properties & settings section, where you’ll learn how to apply settings and properties to objects. For now, I will show the basics of displaying texts. There are many ways to do it, I’ll only show the essentials.

- **text()** - Display texts. Usage:

    text(c, x, y) - ‘c’ means character, any alphanumeric character will be displayed.
    
    text(c, x, y, z) - In case you are working with 3 dimensions.
    
    text(str, x, y) - ‘str’ is the string to be displayed.
    
    text(str, x, y, z) - In case you are working with 3 dimensions.
    
    text(num, x, y) - ‘num’ is the numeric value to be displayed.
    
    text(num, x, y, z) - In case you are working with 3 dimensions.

## Keyboard & Mouse Interactions

Keyboard & mouse interactions in Processing are very easy and straightforward. There are methods you can call for each event, and what you write inside will be executed once when the event occurs. Also there are global variables such as mousePressed and keyPressed you can use in your draw block to take advantage of the loop. Here are some of the methods with explanations:

void setup() {
  
  size(500, 500);

}


void draw() {

  if (mousePressed) {
    
    // Codes here will be executed as long as the mouse
    
    // button is pressed
    
    if (mouseButton == LEFT){
      
      // This lines will be executed as long as
      
      // the clicked mouse button is the left mouse
      
      // button.

    }

  }


  if (keyPressed) {
    
    // Codes here will be executed as long as a key
    
    // on the keyboard is pressed
    
    if (key == CODED) {
      
      // This if statement checks if the pressed key
      
      // is recognised by Processing.
       
      if (keyCode == ENTER) {
        // This lines will be executed if the pressed key
        
        // is the enter key.
      
      }
    
    }
    
    else{
      
      // This lines will be executed if the pressed key
     
      // is not recognised by processing.
    
    }
  
  }
  
}

void mousePressed() {
  
  // These codes will be executed once, when mouse
  
  // is clicked. Note that mouseButton variable is
 
  // also be used here.

}

void keyPressed() {
  
  // These codes will be executed once, when a key
  
  // is pressed. Note that key and keyCode variables
  
  // are also usable here.

}

As you can see, it is pretty easy to check whether the mouse is clicked or which key is being pressed. There are however more options available for mousePressed and keyCode variables. Available options for mousePressed are LEFT, RIGHT and CENTER. There are many more available for keyCode; UP, DOWN, LEFT, RIGHT, ALT, CONTROL, SHIFT, BACKSPACE, TAB, ENTER, RETURN, ESC and DELETE.

One thing to know about the mouse variables, and we will use this a lot, is how to get the coordinates of the mouse. To get the exact coordinates of the cursor, we can use mouseX and mouseY variables directly in the draw() block. Last but not least, there are a lot of other useful methods that you should take a look at. 

## Conclusion

So, this was an insight into Processing language. It is a very simple yet powerful language, and is a must have for begginers as well as expert coders & visual creators.

### Photo Credits

https://www.toptal.com/game/ultimate-guide-to-processing-the-fundamentals

https://processing.org/
