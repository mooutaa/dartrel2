import 'dart:math';
void huerto(){
  var fruta = ['manzana','fresa','naranja'];
  var verdura = ['lechuga','pimiento','albahaca'];
  var huerto = [...fruta,...verdura, 'algarrobo','naranjo'];
  var vocales = ['a','e','i','o','u'];
  var huertosplurales = huerto.where((test) => test is String).map((nombre) => "${nombre}s").toList(); //Utilizamos where para filtrar y map para ir de uno en uno.
  print('$huertosplurales');
  print('');
  var huertosvocales = huerto.where((test) => vocales.contains(test[0].toLowerCase())).toList(); //Contains es igual que en c#
  print(huertosvocales);
  print('');
  var huertosmas5 = huertosvocales.where((test) => test.length > 6).toList() + huerto.where((test2) => test2.length > 6).toList(); //se puede anidar mas de uno where
  print(huertosmas5);
  print('');
  print('"${huertosmas5.map((nombre) => "${nombre}s").join('"-"')}"'); //Darle formato con join, como el string-join de c#
}
void numeros(){
    var lista = List.generate(10, (int index) => Random().nextInt(100)); //Generamos numeros aleatorios y los añadimos a la lista.
    print(lista);
    var listasuma = lista.map((num) => num + 5).toList(); //Buscamos numero por numero y le sumamos 5.
    print(listasuma);
    var listapares = lista.where((test) => test % 2 == 0).toList(); //Filtramos por aquellos que son pares.
    print(listapares);
    lista.sort();
    print(lista);
    int suma = lista.reduce((a,b) => a + b); //Hacemos la suma de todos con reduce.
    print(suma);
    int suma2 = lista.where((test) => test % 2 == 0).toList().reduce((a,b) => a + b); //Sumamos con reduce filtrando los impares.
    print(suma2);
}
