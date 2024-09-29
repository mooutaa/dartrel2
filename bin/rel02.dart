import 'package:rel02/rel02.dart' as rel02;

void main(List<String> arguments) {
  var fruta = ['manzana','fresa','naranja'];
  var verdura = ['lechuga','pimiento','albahaca'];
  var huerto = [...fruta,...verdura, 'algarrobo','naranjo'];
  var vocales = ['a','e','i','o','u'];
  var huertosplurales = huerto.where((test) => test is String).map((nombre) => "${nombre}s").toList();
  print('$huertosplurales');
  var huertosvocales = huerto.where((test) => vocales.contains(test[0].toLowerCase())).toList();
  print(huertosvocales);

}
