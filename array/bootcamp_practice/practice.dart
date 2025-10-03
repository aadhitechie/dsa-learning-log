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