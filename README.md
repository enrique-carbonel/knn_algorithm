# knn_algorithm
MATLAB script that implements the k-nearest neighbors (KNN) algorithm for classification. The dataset is divided into training and testing sets, and the algorithm is applied for different values of k. This project was made for my Introduction to Machine Learning class.

Training Set:
  x_training: Matrix containing features for the training set.
  y_training: Vector containing labels for the training set (class labels).

Testing Set:
  x_testing: Matrix containing features for the testing set.
  y_testing: Vector containing true labels for the testing set.

Parameter K:
  K: Array containing different values of k for the KNN algorithm.

KNN Classification Loop:
  The script iterates over each value of k in the array K.
  For each value of k, it performs the following steps:
  Initializes an array predicted_y to store the predicted labels.
  Iterates over each data point in the testing set.
  Computes Euclidean distances between the current testing point and all training points.
  Finds the k-nearest neighbors based on the smallest distances.
  Predicts the label for the current testing point based on the majority class among the k-nearest neighbors.
  Computes the accuracy for the current value of k by comparing predicted labels with true labels in the testing set.
  Displays the accuracy for the current k.

Output:
  The script prints the accuracy for each value of k in the console.

Notes:
  The code uses the Euclidean distance metric to find the nearest neighbors.
  The mode function is used to find the most common class label among the k-nearest neighbors.
  The accuracy is calculated by comparing predicted labels with true labels and dividing by the total number of testing samples.

The purpose of this script is to evaluate the performance of the KNN algorithm for different values of k on the given dataset. The output will show the accuracy achieved for each k, helping to determine the optimal k for the classification task.
