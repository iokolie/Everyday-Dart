List nums1 = [2, 4, 1,];
dynamic compare(dynamic index1, index2){

    dynamic result = nums1.indexOf(index1).compareTo(nums1.indexOf(index2));
    print(result);
    if (result == 1) {
      print('$index1 is bigger than $index2');
    } else if(result == -1) {
      print('$index1 is smaller than $index2');
    }
  }


void main(){
  List nums = [2, 4, 5, 0, 7, 4, 1, 8,];
  dynamic a = 9;
  nums.add(a);
  
  nums.indexOf(4).compareTo(nums.indexOf(1));
  print(nums);

  List<dynamic> sortCards(List<dynamic> cards){
    return cards;
  }

compare(1, 3);
  
  dynamic results = nums.indexOf(5).compareTo(nums.indexOf(6));
  print(results);
}