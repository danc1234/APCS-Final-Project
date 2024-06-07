# Work Log

## Daniel Choe

### 5/22

added every class needed for now and initialized most of the classes and made basic methods for the class

### 5/23

added a movement system for the balloon. It follows the path of the image by going towards each tile of the array I made for the map.
Added methods in the Bloon and Map class to achieve this

### 5/24

Added the dart class. Has all the methods to pop the balloon. Going to implement monkey throwing darts soon

### 5/27

Added a draw monkey method with no sprite yet. Added an array for the balloon so that I can implement that into rounds

### 5/28

Worked on popping bloon and throwing dart method. Did not finish due to some bugs.

### 5/29

Finished popping bloon and throwing dart method. Tested with only one bloon. need to test with more than one.

### 5/30

Added a countdown so that the balloons are spaced out instead of clumped together.

### 5/31

Worked on rounds but balloons were lagging

### 6/2

Worked on rounds again but balloons were lagging

### 6/3

Finished on making balloons less laggy so now I can fully implement round system.

### 6/4

Tried to make it so that the bloons go to the intended tiles when spawning

### 6/6

Made it so that bloons go to the intended tiles when spawning. Made it so that boss bloons changes sprites in phases(W.I.P)



## Daniel Chen

### 5/22/2024

Added the fields to the Bloons, Boss, Darts, and SpecialBloons classes. Also added constructors to the Bloons, Boss, and SpecialBloons classes.
Finally, added accessors and mutator methods when applicable. 

### 5/23/2024

Added the fields, constructor, and accessor methods to the monkey class. Also figured out how to make the sprites of the bloons. I can model the later sprites off of the red bloon. 

### 5/24/2024

Added the sprites for the bloon class, special bloon class and boss class. Implemented them into the bloon class and special bloon class. 

### 5/25/2024

Added the images for all possible bloon types. Also figured out how to make the sprites of the Moab/Boss Class move using PVectors represented as an array. drawBloon() functions are all done. 

### 5/27/2024

Added a lose screen, money, and wave display to the interface.

### 5/28/2024

Worked on making multiple waves of bloons. Did not finish due to bugs and Null Errors.

### 5/29/2024

Was able to make a slightly working wave. Also, modified the drawBloon functions to make popping easier. 

### 5/30/2024

Found a .svg to .png converter to make images from the BTD wiki easier to use. Added a new parameter to the Monkey constructor specifying which image to use. 

### 5/31/2024

Restored the health system. Updated the constructors so that it uses the layers to determine some of the attributes of the bloon.

### 6/2/2024

Made the money system, placing of Monkeys, and the stop/go button. Also made sprites for the SuperMonkey.

### 6/3/2024 

Made the sniperMonkey tower and condensed constructors even further by setting damage in the attributeDeclarer() method for monkeys.

### 6/5/2024

The CSV File can be worked on using Python. I copied and pasted the output of a function into the Rounds class, thus allowing the official rounds from BTD6 to be deployed. 

### 6/6/2024

Added regrowth and camo bloon functionality. 
