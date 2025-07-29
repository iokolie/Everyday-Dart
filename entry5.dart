//asynchronous format

// Future hello() async{
//   print('Wagwan broski');
// }


// void main() async{
//   await hello();
//   print('all done');
// }

Future<void> hello() async {
  await Future.delayed(Duration(seconds: 2)); // simulate delay
  print('Hello from async function!');
}

void main() async {
  print('Start');
  await hello();  // pause here for 2 seconds
  print('End');
}
