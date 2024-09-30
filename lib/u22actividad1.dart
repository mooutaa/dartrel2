import 'dart:math';
void huerto(){
  var fruta = ['manzana','fresa','naranja'];
  var verdura = ['lechuga','pimiento','albahaca'];
  var huerto = [...fruta,...verdura, 'algarrobo','naranjo'];
  var vocales = ['a','e','i','o','u'];
  var huertosplurales = huerto.where((test) => test is String).map((nombre) => "${nombre}s").toList();
  print('$huertosplurales');
  print('');
  var huertosvocales = huerto.where((test) => vocales.contains(test[0].toLowerCase())).toList();
  print(huertosvocales);
  print('');
  var huertosmas5 = huertosvocales.where((test) => test.length > 6).toList() + huerto.where((test2) => test2.length > 6).toList();
  print(huertosmas5);
  print('');
  print('"${huertosmas5.map((nombre) => "${nombre}s").join('"-"')}"');
}
void numeros(){
    var lista = List.generate(10, (int index) => Random().nextInt(100));
    print(lista);
    var listasuma = lista.map((num) => num + 5).toList();
    print(listasuma);
    var listapares = lista.where((test) => test % 2 == 0).toList();
    print(listapares);
    lista.sort();
    print(lista);
    int suma = lista.reduce((a,b) => a + b);
    print(suma);
    int suma2 = lista.where((test) => test % 2 == 0).toList().reduce((a,b) => a + b);
    print(suma2);
}