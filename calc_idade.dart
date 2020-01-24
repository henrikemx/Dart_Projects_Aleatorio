import 'dart:io';

void main(){

  bool condicao = true;
  String nome;
  int idade, mes, ano_nasc;

  while(condicao){

    print('-'*40);
    print('\x1B[2J\x1B[0;0H');

    stdout.write('Informe o nome: ');
    nome = stdin.readLineSync();
    stdout.write('Informe o mês de nascimento [1 a 12]: ');
    mes = int.parse(stdin.readLineSync());
    stdout.write('Informe ano de nascimento: ');
    ano_nasc = int.parse(stdin.readLineSync());

    if (ano_nasc.bitLength == 4){
      idade = calcIdade(mes, ano_nasc);
    } else {
      print('favor informar ano com 4 dígitos !!');
      stdout.write('Informe ano de nascimento: ');
      ano_nasc = int.parse(stdin.readLineSync());
      idade = calcIdade(mes, ano_nasc);
    }
    
    resultado(nome, idade);

    stdout.write('Deseja continuar ? [S/N] ');
    String resp = stdin.readLineSync();

    if (resp == 'n'){
      print('\n=== Programa Encerrado ===');
      break;
    }
  }

}

calcIdade(mes, ano_nasc){

    DateTime data = DateTime.now();
    int mesAtual = data.month;
    if (mesAtual < mes ){
      return (data.year - 1) - ano_nasc;
    } else {
      return data.year - ano_nasc;
    }

}

resultado(nome, idade){
    print('$nome tem $idade anos.');
}