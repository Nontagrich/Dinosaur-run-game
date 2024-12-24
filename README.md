![image](https://github.com/user-attachments/assets/04ac5da5-7933-4e4d-8088-2aa451e60e3c)


The display on the VGA screen consists of the following main components:

Dinosaur Character

Role: The player controls the main character.
Control: The player can press a button (on the Basys3 board) to make the dinosaur jump over obstacles.
Position: Fixed on the X-axis, but the Y-axis position changes when jumping.
Cactus 1 and 2 (Obstacles)

Role: Serve as obstacles that the player must avoid.
Movement: Move from right to left, increasing speed as the player’s score increases.
Position Reset: When an obstacle moves off the screen, it resets to its initial position on the right, with a random repositioning for added challenge.
Ground

Role: Acts as a reference line for jumping and collision detection.
Display: A fixed horizontal line displayed in a constant position.
Collision Detection

Functionality: Checks if the dinosaur character collides with a cactus.
Conditions:
The dinosaur's X and Y positions must overlap with the cactus's X and Y positions while the cactus is moving across the screen.
If a collision occurs, the game stops and displays the collision status.

![image](https://github.com/user-attachments/assets/45091f3b-f1ed-4c2a-a95c-58a947dc702b)

The Basys3 board is used to control the game and display the score, with the following key components:

1. Score Display (7-Segment Display)
Details: Utilizes all four 7-segment displays on the Basys3 board to show the player's accumulated score.
Update: The score increases when the player successfully avoids obstacles, and the numbers are displayed continuously.
2. Jump Button
Position: BTNU (Up Button).
Function: Used to make the dinosaur jump over obstacles.
Operation: Pressing the button sends a signal to the control module in the Verilog code, adjusting the Y-axis position of the dinosaur character.
3. Reset Button
Position: BTNC (Center Button).
Function: Resets the game to its initial state.
Operation:
Resets the score to zero.
Reinitializes the position of the character and obstacles.
4. VGA Screen Connection (VGA Port)
Details: Uses the VGA port on the Basys3 board to send video signals to a monitor.
Graphics Display: The game renders graphics such as the dinosaur character, obstacles, and ground-based on position calculations in the code.
Overall Workflow
Starting the Game:
Press the Reset button to initialize the game.
Observe the score reset to zero on the 7-segment display.
Controlling the Dinosaur:
Press the Jump button to avoid obstacles.
The score increases for every successful dodge.
Game Over:
If the character collides with an obstacle, the system halts the game.
Future Development Directions
Add More Features: Incorporate new mechanics like crouching and special item systems.
Improve Scoring System: Ensure it is more robust and stable.
Enhance the UI: Make the interface more engaging by adding elements such as clouds, birds, and the sun.

