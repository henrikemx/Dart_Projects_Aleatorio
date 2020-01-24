import 'dart:io';

void main(){

  print('-'*30);
  // exemplo do uso do forEach em um Listas
  List<String> nomes = ['Carlos', 'Eduardo', 'Mauricio', 'Joaquim'];

  // saída formatada via método forEach
  nomes.forEach((text){
    print('ID ${nomes.indexOf(text)} : ${nomes[nomes.indexOf(text)]}');
  });

  // exemplo do uso do forEach em um Map
  Map<String, dynamic> pessoa = {
    'nome':'Carlos',
    'idade': 27,
    'cidade':'Vitória',
    'estado': 'Espírito Santo'
  };

  print('-'*30);
  // saída formatada via método forEach
  pessoa.forEach((key, value){
    stdout.write(key);
    print(': ' + value.toString());
  });
  print('-'*30);

}