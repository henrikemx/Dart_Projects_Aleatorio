main(){

  var bd = {
    'nome' : 'Joaquim',
    'a_nasc' : 1982,
    'cidade' : 'Manaus',
    'estado' : 'AM'
  };

  print('Esta é uma variável do tipo Map ou Dicionário: $bd');

  // empregando Lista com um Map, ou vice-versa

  List<Map<String, dynamic>> db = [{}];

  //db.add({'nome':'Carlos'});
  db[0] = {'nome': 'Carlos'};
  print('Este é o conteúdo de uma Lista/Map: ${db[0]['nome']}');

}