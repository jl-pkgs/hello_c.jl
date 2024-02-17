#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>

int main() {
  // Read the image file
  cv::Mat image = cv::imread("data/terra.jpg");

  // Check for failure
  if (image.empty()) {
    std::cout << "Could not open or find the image" << std::endl;
    return -1;
  }

  // Convert the image from color to grayscale
  cv::Mat gray_image;
  cv::cvtColor(image, gray_image, cv::COLOR_BGR2GRAY);

  // Create a window
  cv::namedWindow("Window", cv::WINDOW_NORMAL);

  // Show our image inside the created window
  cv::imshow("Window", gray_image);

  // Wait for any keystroke in the window
  cv::waitKey(0);

  return 0;
}
