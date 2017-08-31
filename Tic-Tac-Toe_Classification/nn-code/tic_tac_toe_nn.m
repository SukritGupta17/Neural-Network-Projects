% Author: Sukrit Gupta
% Pattern recognition neurol network on tic-tac-toe dataset

% CSV file containing data set is read and saved
data = csvread('tic_tac_toe_test.csv');
% inputs and outputs are seperated
inputs = data(:,1:end-1)';
outputs = data(:,end);
outputs = bsxfun(@eq,outputs(:),[0,1])';
% K-Fold cross validation is set
CVO = cvpartition(outputs(1,:),'KFold',10);


err = zeros(CVO.NumTestSets,1);
% to find the most effective topology the following for loop was used(now
% commented out)
%for j = 1:50
% confusion matrix is intialized as a 2X2 matrix
confusion = zeros(2,2);
for i = 1:CVO.NumTestSets
    % training and testing indexes are created
    trIdx = CVO.training(i);
    teIdx = CVO.test(i);
    % training input and training output matrices are created
    train_inputs = inputs(:,trIdx);
    train_outputs = outputs(:,trIdx);
    % seperate testing input and testing output matrices are created
    test_inputs = inputs(:,teIdx);
    test_outputs = outputs(:,teIdx);
    % neural net topology is set(type of net, no. of layers and neurons)
    net = patternnet(39);
    % neural net is trained
    [net,tr] = train(net,train_inputs,train_outputs);
    y = net(test_inputs);
    % classification error is calculated
    err(i) = sum(vec2ind(y) ~=vec2ind((test_outputs)))/length(test_outputs);
    % aggregated confusion matrix is calculated for further analysis
    confusion = confusion + confusionmat(vec2ind(test_outputs),vec2ind(y));
end
% function to calculated various performace measures is called
performance(confusion)
% Aggregated classification error is calculated
all_err = sum(err)/CVO.NumTestSets
 %end
