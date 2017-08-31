# Pattern Recognition Neural Network on a Tic-Tac-Toe Game

A **Pattern-recognition neural network** applying _Back propagation
algorithm_ is used to classify the results of data set containing possible board
configurations at the end of a tic-tac-toe game into binary classification of “Win
for ‘x’ ” or “not”, where “x” is assumed to have played the first move. The data
was passed through several topologies of the neural network (different number
of layers and neurons) as experimentation to find the best suitable topology, 10
K-Fold cross validation was used to keep the results accurate. The evaluation of
the model is based on the accuracy, precision, specificity and sensitivity
comparing the results with the published research paper applying to the same
data set. The best results for the above criteria’s were 79.96%, 72.01%,
85.78%, 69% respectively, compared to the research paper[1] using six
different algorithms such as NewID, CN2, MBRtalk, IB1, IB3 and IB3-CI,
Neural networks were not used in the research paper.

Screenshot of results:
![Classification result](https://github.com/SukritGupta17/Neural-Network-Projects/blob/master/Tic-Tac-Toe_Classification/Results/tic_tac_toe_63_64.PNG)

Accuracy Results:
![accuracy precision](https://github.com/SukritGupta17/Neural-Network-Projects/blob/master/Tic-Tac-Toe_Classification/Results/result_tic_tac_toe_63_64.PNG)

Performance:
![performance graph](https://github.com/SukritGupta17/Neural-Network-Projects/blob/master/Tic-Tac-Toe_Classification/Results/performance.PNG)

Error Histogram:
![](https://github.com/SukritGupta17/Neural-Network-Projects/blob/master/Tic-Tac-Toe_Classification/Results/error_hist.PNG)
