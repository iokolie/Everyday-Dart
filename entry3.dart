
List<dynamic> sortCards(List<dynamic> cards){
  cards.sort((a, b) => getCardValue(a).compareTo(getCardValue(b)));
  return cards;
}


int getCardValue(dynamic card) {
  if (card is int) {
    return card;
  } else if(card is String) {
    switch (card) {
      case 'Jack':
        return 11;
      
      case 'Queen':
        return 12;
      
      case 'King':
        return 13;
    }
  }
  return 0;
  
}


void main() {
  List<dynamic> cards = ['Jack', 8, 2, 2, 6, 'King', 5, 3, 'Queen', 'King', 'Queen'];
  List<dynamic> sortedCards = sortCards(cards);
  
  print(sortedCards);

  Map gfg = new Map(); 
  gfg['Nigeria'] = 'FCT'; 
  gfg['Ify'] = 'Daisy'; 
  gfg['Love'] = 'Heart';
  print(gfg);

  Map<String , int> Lap = {
    "Okolie" : 20,
    "Ailenbuade" : 21,
    "Lebron" : 9000,
    "Lily" : 20
  };
      Lap.forEach((key, value) => print("$key matches $value in some way....maybe"));


Map <String, dynamic> userProfile = {
  "name" : "ify",
  "age" : 21,
  "order" : [
    {"id" : "1", "Product" : "laptop", "price" : 3400.0},
    {"id" : "2", "Product" : "Porsche 911 GTR", "price" : 145200.0},
    {"id" : "3", "Product" : "Phone", "price" : 1200.0} 
  ],
  "address" : {
    "Planet" : "Earth",
    "Country" : "UK",
    "Region" : "Coventry"
  }
};

 print("Name : ${userProfile['name'] }");
 print("Age : ${userProfile['age'] }");
 print("Dream Car : ${userProfile['order'] [1] ['Product'] }");

double num1 = 57.73;

dynamic abs = num1.ceil();

print(abs);


}

  