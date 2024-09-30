void u22actividad2ejercicio1(){
  List<Map<String, dynamic>> productos = 
  [
  { "name": "Laptop", "price": 800 },
  { "name": "Smartphone", "price": 400 },
  { "name": "Tablet", "price": 150 },
  { "name": "Monitor", "price": 300 }
  ];
  List nombre = productos.map((test) => test["name"]).toList();
  print(nombre);
  List productosmax = productos.where((test) => test["price"] > 300).map((nombre) => nombre["name"]).toList();
  print(productosmax);
  List productosmin = productos.where((test) => test["price"] < 200).map((nombre) => nombre["name"]).toList();
  print(productosmin);
  int suma = productos.where((test) => test["price"] > 300).map((precio) => precio["price"]).reduce((a,b) => a+b);
  print(suma);
  String result = productos.map((test) => '${test["name"]} ${test["price"]}').join('-');
  print(result);
  }
void u22actividad2ejercicio2(){
  List<Map<String, dynamic>> personas = 
  [
  { "name": "John", "birth": "2010-11-05", "favFruits": ["banana"]},
  { "name": "Mary", "birth": "2015-01-19", "favFruits": ["banana", "mango"]},
  { "name": "Bob", "birth": "1999-08-23", "favFruits": ["kiwi", "apple"]},
  { "name": "Sara", "birth": "1976-04-12", "favFruits": ["pear", "grapes"]}
  ];
  List<Map<String, String>> frutas = [
    { "name": "banana", "color": "yellow" },
    { "name": "apple", "color": "green" },
    { "name": "grapes", "color": "purple" },
    { "name": "pear", "color": "green" }
  ];

  DateTime ahora = DateTime.now();
  List nombres = personas.where((persona) => ahora.year - DateTime.parse(persona["birth"]).year > 20).map((persona) => persona["name"]).toList();
  print(nombres);
  List frutasAmarillas = frutas.where((fruta) => fruta["color"] == "yellow").map((fruta) => fruta["name"]).toList();
  List nombresAmarillo = personas.where((persona) => persona["favFruits"].any((fruta) => frutasAmarillas.contains(fruta))).map((persona) => persona["name"]).toList();
  print(nombresAmarillo);
  
  List<Map<String, dynamic>> personasAmarillas = personas.where((persona) => persona["favFruits"].any((fruta) => fruta == "banana")).map((persona) {
      int age = ahora.year - DateTime.parse(persona["birth"]).year;
      return {
        "name": persona["name"],
        "age": age,
      };
    }).toList();
  print(personasAmarillas);
}