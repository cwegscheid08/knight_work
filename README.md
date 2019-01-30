# knight_work

## INIITIAL THOUGHTS

For this project I will need a few classes.  A board class, which will build the board as well as hold the piece location.  It will also need a knight class which will contain the way the piece moves as well as build a binary tree of the possible moves available to the piece based on it's location.


## WORKING THOUGHTS

In preperation for the upcoming chess project, I am also creating a GamePiece class which will be the parent class to the Knight class. This will limit the amount to require in the Board class and will make it easier to create extra game pieces later on.



### CLASSES


#### BOARD

The board class will build an 8x8 matrix of a hash housing an array using [0,0]-[8,8] as the coordinants of each cell. It will also call for the creation and placement of the Knight class.

#### KNIGHT

This will have to build a binary search tree of moves, based on the current location of the piece withing the Board object, with each level away from the root (location of piece) representing the amount of moves to reach that location. Since [0,0]-[8,8] will be the bounds of the board, and a knight can move two cells away and then one to the side of its its location, the possibilities of its next move can be represented by:

	location = [3,3]
	possibilites = [location[0]-1, location[1]-2]
	possibilites = [location[0]+1, location[1]+2]
	etc...
		THIS IS EVERY VARIATION OF 
			(+1,+2) 
			(-1,-2) 
			(+1,-2) 
			(-1,+2) 
			(+2,+1) 
			(-2,-1)
			(-2,+1)
			(+2,-1)

When each possibility is being generated, if the possibily is either < 0 or > 8 it will not be recorded withing the tree. Then, using a depth first search method, you can determine the shortest distance from your current cell to any of the other adjacent cells

#### GAME_PIECES

This will be the parent class to the Knight class. It will be where the basic steps to create a binary tree of moves will be created and housed.  The Knight class itself will just hold that the Knight can move 2 spaces up and 1 to the side in any direction and apply that to it's inherited BST creation method.  This will make creating more pieces later on much easier, in that they will just have to house their move capabilities and not the actual recursive methods within them.



#### TESTING

Test.rb will have to be called from the root file and with use a method called 'set_knight' which will store both a set Board object and Knight object. Within that you will be able to call Knight.knight_move([destination_cell]), and will move your current piece to your desired cell, displaying each of the cells you use in the interim. 