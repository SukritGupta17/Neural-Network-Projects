% Author: Sukrit Gupta
% Fitness function for genetic algorithm

function findError = fitness(featureSelection)
    % reads in the data set
    data = csvread('tic_tac_toe_test.csv');
    % applies the feature selection in inputs
    inputs = data(:,logical(featureSelection))';
    outputs = bsxfun(@eq,data(:,end),[0,1])';
    % K-Fold cross validation is set
    CVO = cvpartition(outputs(1,:),'KFold',10);
    error = zeros(CVO.NumTestSets,1);
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
    net = train(net,train_inputs,train_outputs);
    y = net(test_inputs);
    % classification error is calculated
    error(i) = sum(vec2ind(y) ~=vec2ind((test_outputs)))/length(test_outputs);
    % aggregated confusion matrix is calculated for further analysis
    confusion = confusion + confusionmat(vec2ind(test_outputs),vec2ind(y));
    end
    % returns the error 
    findError = (sum(error)/CVO.NumTestSets);
end
