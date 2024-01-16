x_training = [60.0, 18.4;            85.5, 16.8;            64.8, 21.6;            61.5, 20.8;            87.5, 23.6;            110.1, 19.2;            108.0, 17.6;            82.8, 22.4;            69.0, 20.0;            93.0, 20.8;           81.0, 20.0;           75.0, 19.6;           52.8, 20.8;           64.8, 17.2;           43.2, 20.4;           84.0, 17.6;           49.2, 17.6;           59.4, 16.0;           66.0, 18.4;           47.4, 16.4;           33.0, 18.8;           51.0, 14.0;           63.0, 14.8];

y_training = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2];


x_testing = [69.0, 18.8;          75.0, 14.0;          63.0, 18.4;          93.0, 17.6;          52.8, 16.8;          81.0, 22.0];

y_testing = [1, 1, 2, 1, 2, 2];


K = [1, 2, 3, 4, 5, 6, 7];

for k = K
    predicted_y = zeros(size(y_testing));
    for i = 1:size(x_testing, 1)
        distances = sqrt(sum((x_training - x_testing(i,:)).^2, 2));
        [~, indices] = sort(distances);
        k_nearest_indices = indices(1:k);
        k_nearest_labels = y_training(k_nearest_indices);
        predicted_y(i) = mode(k_nearest_labels);
    end
    accuracy = sum(predicted_y == y_testing) / length(y_testing);
    disp(['Accuracy for k = ', num2str(k), ' is ', num2str(accuracy)]);
end