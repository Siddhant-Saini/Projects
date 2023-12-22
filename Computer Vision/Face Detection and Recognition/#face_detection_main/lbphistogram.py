import cv2
import numpy as np
import matplotlib.pyplot as plt

# Load the facial image (replace with your image path)
image = cv2.imread("data/user.1.1.jpg", cv2.IMREAD_GRAYSCALE)

# Create an LBP object
radius = 1
n_points = 8 * radius
lbp = cv2.face.LBPHFaceRecognizer_create(radius, n_points)

# Calculate the LBP histogram
histogram = cv2.calcHist([image], [0], None, [256], [0, 256])

# Normalize the histogram
histogram /= histogram.sum()

# Display the LBP histogram
plt.figure()
plt.title("LBP Histogram")
plt.xlabel("LBP Code")
plt.ylabel("Frequency")
plt.plot(histogram)
plt.show()
