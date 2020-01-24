import 'dart:io';

main(){

  Map<String, List<dynamic>> db = {};

  //db.add({'nome':'Carlos'});
  db['nome'] = ['Carlos', 'Maria', 'Luiz', 'Joana'];
  db['cidade'] = ['Manaus', 'Alagoas', 'Belém', 'Curitiba'];
  db['ano_nasc'] = [1990, 1962, 1976, 1985];

  print('-'*30);
  print('Informação bruta: $db');
  print('-'*30);
  print('Este é o conteúdo do índice 0 para a String "nome": ${db['nome'][0]}');
  print('-'*30);
  print('Total de Maps: ${db.length}');
  print('-'*30);

  stdout.write('Nomes:');
  for (var i = 0;i < db['nome'].length; i++){
    //print(db['nome'][i]);
    stdout.write(' ${db['nome'][i]}');
  }

  print('\n');
  print('-'*30);
  print(db['nome'].length);
}