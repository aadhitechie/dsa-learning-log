//two sum
List sampleArray = [2,1,5,3];
int target =4;
Map<int, int> sampleMap = {};

void main(){
  // for(var i in sampleArray){
  //   int count = 
  //   var needed = target - i;
  //   print('needed : $needed');
  //   if(sampleMap.containsKey(needed)){
  //     print('$i,$needed');
  //   }else{
  //   print('i : $i');
  //   print('sampleArray[i] ${sampleArray[i]}');
  //   sampleMap[sampleArray[i]]=i;
  //   print(sampleMap);
  //   }
    
  // }


  // for (var i = 0; i < sampleArray.length; i++) {
  //   var needed = target - sampleArray[i];
  //   print('needed : $needed');
  //   if(sampleMap.containsKey(needed)){
  //     print('ans : $i,$needed');
  //     print('ans : $i,${sampleMap[needed]}');
  //     return;
  //   }else{
  //   sampleMap[sampleArray[i]]=i;
  //   print(sampleMap);
  // }
  // }


  // final strs = ["flower","flow","flight"];
  // String shortest = strs.reduce((a, b) => a.length < b.length ? a : b);

  // for (var i = 0; i < shortest.length; i++) {
  //   String s = shortest[i];
  //   //print(s);
  //   for (int j = 0; j < strs.length; j++) {
  //     if (strs[j][i] != s) {
  //       print(shortest.substring(0, i));
  //     }
  //   }
  //   //print(shortest);
  // }

  List nums = [0,0,1,1,1,2,2,3,3,4];
  // Map<int,int> sample = {};
  var s = <int>[];
  var ss = s.sort();
  //var unique = nums.toSet().toList();
  //print(unique);
  for (var i = 0; i < nums.length; i++) {
    if (s.contains(nums[i])) {
      s.add(0);
    } else {
      s.add(nums[i]);
    }
  }

  for (var i = 0; i < s.length; i++) {
  
    if (s[i] > 0) {
      
    }
  }
print(s);
}

//no.4 leetcode
class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> A = nums1;
    List<int> B = nums2;
    int m = A.length;
    int n = B.length;

    // Ensure A is the smaller array
    if (m > n) {
      List<int> temp = A;
      A = B;
      B = temp;
      m = A.length;
      n = B.length;
    }

    int low = 0, high = m;

    while (low <= high) {
      int i = (low + high) ~/ 2;
      int j = ((m + n + 1) ~/ 2) - i;

      double Aleft = (i > 0) ? A[i - 1].toDouble() : double.negativeInfinity;
      double Aright = (i < m) ? A[i].toDouble() : double.infinity;
      double Bleft = (j > 0) ? B[j - 1].toDouble() : double.negativeInfinity;
      double Bright = (j < n) ? B[j].toDouble() : double.infinity;

      if (Aleft <= Bright && Bleft <= Aright) {
        // Found the correct partition
        if ((m + n) % 2 == 0) {
          return ((Aleft > Bleft ? Aleft : Bleft) +
                  (Aright < Bright ? Aright : Bright)) /
              2.0;
        } else {
          return (Aleft > Bleft ? Aleft : Bleft);
        }
      } else if (Aleft > Bright) {
        high = i - 1;
      } else {
        low = i + 1;
      }
    }

    throw Exception("Input arrays not sorted or invalid");
  }
}

