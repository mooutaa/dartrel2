void u22actividad2ejercicio1(){
  List<Map<String, dynamic>> productos = //Le asignamos cada uno de los tipos de datos para que detecte el formato de json
  [
  { "name": "Laptop", "price": 800 },
  { "name": "Smartphone", "price": 400 },
  { "name": "Tablet", "price": 150 },
  { "name": "Monitor", "price": 300 }
  ];
  List nombre = productos.map((test) => test["name"]).toList(); //Para filtrar tenemos que poner el elemento que queremos buscar.
  print(nombre);
  List productosmax = productos.where((test) => test["price"] > 300).map((nombre) => nombre["name"]).toList(); //Podemos filtrar con más de un apartado.
  print(productosmax);
  List productosmin = productos.where((test) => test["price"] < 200).map((nombre) => nombre["name"]).toList();
  print(productosmin);
  int suma = productos.where((test) => test["price"] > 300).map((precio) => precio["price"]).reduce((a,b) => a+b); //Sumamos al igual que en los primeros ejercicios.
  print(suma);
  String result = productos.map((test) => '${test["name"]} ${test["price"]}').join('-'); //Utilizamos join y instanciamos ambos campos en un string.
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
  List nombres = personas.where((persona) => ahora.year - DateTime.parse(persona["birth"]).year > 20).map((persona) => persona["name"]).toList(); //Tenemos que parsear y restar la fecha que nos aparece con la de ahora.
  print(nombres);
  List frutasAmarillas = frutas.where((fruta) => fruta["color"] == "yellow").map((fruta) => fruta["name"]).toList(); //Filtramos por color amarillo.
  List nombresAmarillo = personas.where((persona) => persona["favFruits"].any((fruta) => frutasAmarillas.contains(fruta))).map((persona) => persona["name"]).toList(); //Igual que el anterior pero usando el any. Parecido a XPATH
  print(nombresAmarillo);
  
  List<Map<String, dynamic>> personasAmarillas = personas.where((persona) => persona["favFruits"].any((fruta) => fruta == "banana")).map((persona) {
      int age = ahora.year - DateTime.parse(persona["birth"]).year;
      return {
        "name": persona["name"],
        "age": age,
      };
    }).toList(); //Definiendo un tipo de lista podemos devolver el formato renombrando los campos. Parecido a XPATH/XSLT/XQUERY.
  print(personasAmarillas);
}
