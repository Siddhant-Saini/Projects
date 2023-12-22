import cv2
import numpy as np
import matplotlib.pyplot as plt
from skimage import feature

# Load the facial image (replace with your image path)
image = cv2.imread("data/user.1.1.jpg", cv2.IMREAD_GRAYSCALE)

# Define LBP parameters
radius = 1
n_points = 8 * radius

# Calculate the LBP image
lbp_image = feature.local_binary_pattern(image, n_points, radius, method='uniform')

# Convert the LBP image to uint8 type (required for OpenCV)
lbp_image = (lbp_image * 255).astype(np.uint8)

# Calculate the LBP histogram
histogram = cv2.calcHist([lbp_image], [0], None, [256], [0, 256])

# Normalize the histogram
histogram /= histogram.sum()

# Display the LBP image
plt.figure(figsize=(12, 6))
plt.subplot(121), plt.imshow(lbp_image, cmap='gray'), plt.title('LBP Image')
plt.axis('off')
# Display the LBP histogram
plt.subplot(122), plt.plot(histogram), plt.title('LBP Histogram')
plt.xlabel('LBP Code')
plt.ylabel('Frequency')
plt.show()

cv2.imshow('image1',image)
cv2.waitKey(0)
cv2.destroyAllWindows()