# Using Genetic Algorithm to Select Features for a Pattern Recognizing Neural Network Classifying a Tic-Tac-Toe End Game.

This project shows an exploratory experiment to select the most
important features from a data set containing the results of a tic-tac-toe end
game. This approach involves using **genetic algorithm** as a **feature selector** and
passing the selected features as input to a pattern recognizing neural network
that classifies the data into a binary classification of “Win for x” or “not” [1].
The neural network is using K-Fold cross validation to keep results accurate.
Several tests were performed with varying population size, stall generation,
different crossover and selection functions. The evaluation is based on the
resultant best and mean fitness values (error value) and the final chromosome
string of important features selected by the genetic algorithm. The terminal
results for these criteria’s were 17.85% and 22.2% whereas the chromosome
string revealed at the end of 168 generation (initial population size 50) run of
the algorithm that all nine features contribute with equal importance . Using the
mean value for comparison from classification project that evaluated the same
neural network topology, the results are similar in terms of accuracy (~79.8 %).

Result:
![Result](https://github.com/SukritGupta17/Neural-Network-Projects/blob/master/Tic-Tac-Toe_Genetic-Algorithm/Results/fig1%20crossover.JPG)

Final Gene Output: 
![Gene](https://github.com/SukritGupta17/Neural-Network-Projects/blob/master/Tic-Tac-Toe_Genetic-Algorithm/Results/final%20Result.JPG)


_Note: For more details refer to the report_
