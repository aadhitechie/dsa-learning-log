//1.Two Sum
// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
final nums = [2,7,11,15];
int target = 26;
Map<int,int> sampleMap= {};
void main(){
  for (var i = 0; i < nums.length; i++) {
    var needed = target - nums[i];
    if (sampleMap.containsKey(needed)) {
      print('${sampleMap[needed]},$i');
    }else{
      sampleMap[nums[i]] = i;
    }
  }
}