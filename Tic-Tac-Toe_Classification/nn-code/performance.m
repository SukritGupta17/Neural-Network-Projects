% This function outputs the Accuracy, Precision
% Specificity and Sensitivity by calculating it using
% the values from the Confusion matrix i.e.
% True positive(TP), True negative(TN), False positive(FP) and False negative(FN)


function performance(C)
% accuracy = (TP+TN)/total
accuracy = (C(1,1) + C(2,2)) /  (C(1,1)+C(1,2)+C(2,1)+C(2,2));
% precision = TP/(TP + FP)
precision = C(1,1)/(C(1,1) + C(2,1));
% specificuty = TN/(TN + FP)
specificity = C(2,2)/(C(2,1)+C(2,2));
% sensitivity = TP/(TP + FN)
senstivity = C(1,1)/(C(1,1) + C(1,2));

end