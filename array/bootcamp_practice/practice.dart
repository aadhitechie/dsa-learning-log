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
  for (var i = 0; i < sampleArray.length; i++) {
    var needed = target - sampleArray[i];
    print('needed : $needed');
    if(sampleMap.containsKey(needed)){
      print('ans : $i,$needed');
      print('ans : $i,${sampleMap[needed]}');
      return;
    }else{
    sampleMap[sampleArray[i]]=i;
    print(sampleMap);
  }
  }
}