#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))

double findMedianSortedArrays(int* nums1, int nums1Size, int* nums2, int nums2Size) {
  if (nums1Size > nums2Size) { // to ensure nums1Size <= nums2Size
    int *temp = nums1;
    nums1 = nums2;
    nums2 = temp;

    int tmp = nums1Size;
    nums1Size = nums2Size;
    nums2Size = tmp;
  }

  int iMin = 0, iMax = nums1Size, halfLength = (nums1Size + nums2Size + 1) / 2;

  while (iMin <= iMax) {
    int i = (iMin + iMax) / 2;
    int j = halfLength - i;

    if (i < iMax && nums2[j-1] > nums1[i]) {
      iMin++; // i is too small
    }
    else if (i > iMin && nums1[i-1] > nums2[j]) {
      iMax--; // i is too big
    }
    else { // i is perfect
      int maxLeft = 0;
      if (i == 0) { maxLeft = nums2[j-1]; }
      else if (j == 0) { maxLeft = nums1[i-1]; }
      else { maxLeft = MAX(nums1[i-1], nums2[j-1]); }

      // The total number is odd then return the middlest number
      if ((nums1Size + nums2Size) % 2 == 1) { return maxLeft; }

      int minRight = 0;
      if (i == nums1Size) { minRight = nums2[j]; }
      else if (j == nums2Size) { minRight = nums1[i]; }
      else { minRight = MIN(nums2[j], nums1[i]); }

      // The total number is even then return the middlest two numbers
      return (maxLeft + minRight) / 2.0;
    }
  }

  return 0.0;
}
