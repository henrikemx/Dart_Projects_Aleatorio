import 'dart:io';

main(){
  // exemplo de loop for com operador "in"
  var colletion = [0, 1, 2];
  stdout.write('Colletion = ');
  for (var c in colletion) {
    stdout.write(' $c ');
  }
}