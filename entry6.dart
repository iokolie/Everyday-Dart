//async / future tasks


//easy 1
Future<void> username() async{
  await Future.delayed(Duration(seconds: 2));
  return print('strawhat_ify');
}

//easy 2

Future<void> seq() async{
  await Future.delayed(Duration(seconds: 3));
}


Future<void> login(name, email) async{
  name = 'Ify';
  email = 'Okolie';
  await Future.delayed(Duration(seconds: 3));
  print('Login Successful');
  
}


void main() async{
  // print('Start');
  // await seq();
  // print('End');
  //await username();

  await login('ify', 'Okolie');
}



