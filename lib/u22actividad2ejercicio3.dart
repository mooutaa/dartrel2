import 'package:diacritic/diacritic.dart';
void u22actividad2ejercicio3()
{
  List<Map<String,dynamic>> automoviles=
 [
{ "model": "Ferrari", "attributes": { "maxSpeed": 350, "year": 2006 } },
{ "model": "Lamborghini", "attributes": { "maxSpeed": 290, "year": 2012 } },
{ "model": "Porsche", "attributes": { "maxSpeed": 280, "year": 2019 } },
{ "model": "Mercedes", "attributes": { "maxSpeed": 240, "year": 2019 } }
];
List<String> listadocoche= automoviles.map((elemento)=> elemento["model"] as String).toList()..sort(); //Ordenamos con sort IMPORTANTE PONERLE LOS DOS PUNTOS
print(listadocoche);

int diacriticsCaseAwareCompare(String a, String b) {
  String aNormalized = removeDiacritics(a).toLowerCase(); //Utilizamos el método del ejercicio. Cuando ponemos la dependencia no la encuentra a no ser que se haga CTRL + . y le demos a add dependencie diacritics.
  String bNormalized = removeDiacritics(b).toLowerCase();

  return aNormalized.compareTo(bNormalized);
}

  List<String> modelosOrdenados = automoviles.map((coche) => coche['model'] as String).toList()..sort(diacriticsCaseAwareCompare); //Utilizamos el metodo de arriba pasandolo por parametros a sort.
  print(modelosOrdenados);

  List<int> anos = automoviles.map((coche) => coche['attributes']['year'] as int).toList()..sort(); //Ponemos sort para que no hayan repetidos.
  print(anos); 
}