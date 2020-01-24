void main (){
  print('='*40);

  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
  print('vogais: $vogais');
  vogais.add('r'); // ['a', 'e', 'i', 'o', 'u', 'r']
  print('vogais[adicionado "r"]: $vogais');
  vogais.remove('r'); // ['a', 'e', 'i', 'o', 'u']
  print('vogais[removido "r"]: $vogais');
  vogais.remove('e'); // ['a', 'i', 'o', 'u']
  print('vogais[removido "e"]: $vogais');
  vogais.insert(1, 'e'); //['a', 'e', 'i', 'o', 'u']
  print('vogais[inserido "1" e "e"]: $vogais');
  vogais.clear(); // [] <- lista vazia
  print('vogais[clear]: $vogais');

  print('='*40);
  /**
   * Index, ou índices, são as posições dos elementos em uma lista. Na 
   * aioria das linguagens a contagem começa por 0. Nunca se esqueça disso!
   * Adicionar uma lista à outra se tornou mais simples a partir da versão
   * 2.3 da linguagem, na qual introduziu-se o "spread operator". Caso o
   * valor à direita possa ser null, utilize o null-aware spread operator
   * (última linha do código) para evitar erros na execução do código.
   */
  List<int> lista1 = [4, 5];
  List<int> lista2 = [1, 2, 3, ...lista1]; // spread operator ->...lista1 copia os elementos
  List<int> lista3 = [...?lista2]; // null-aware spread operator

  print('lista1: $lista1');
  print('lista2: $lista2');
  print('lista3: $lista3');

  /**
   * Outras novidades são "collection if" e "collection for", onde as
   * listas são criadas através de uma condição ou de um loop.
   */
  List<int> primeiraListaNumeros = [3, 4, 5, 6, 7];
  List<int> segundaListaNumeros = [1, 2, for(int  numero in primeiraListaNumeros) numero];

  print(primeiraListaNumeros);
  print(segundaListaNumeros);

  print('='*40);
  /**
   * Conjuntos (Sets):
   * Conjuntos em Dart são como conjuntos matemáticos: a ordem e a 
   * quantidade de vezes que um elemento aparece não possuem importância.
   * Para utilizá-los, é necessário colocar um tipo antes de {}. Caso
   * contrário, o interpretador entenderá que se trata de um Map.
   */
  var conjuntoDeNumeros = <int>{};
  print(conjuntoDeNumeros is Set); // true

  var outroConjuntoDeNumeros = {};
  print(outroConjuntoDeNumeros is Set); // false

  var letras = <String>{'a', 'a', 'b', 'b', 'c', 'c'};
  print('letras: $letras'); // {a, b, c}, pois elementos repetidos não importam para conjuntos
  print('conjuntoDeNumeros: $conjuntoDeNumeros');
  print('outroConjuntoDeNumeros: $outroConjuntoDeNumeros');
  
  print('='*40);
  /**
   * Mapas são objetos que associam chaves, em strings, a valores que podem ser de qualquer tipo! Apesar dos valores poderem se repetir, as chaves devem ser únicas. 
   * */
  Map<String, dynamic> listaDeCompras = {
    'chocolates': 2,
    'refrigerantes': 4,
    'carne': 1.5 // quilos
  };
  print('listaDeCompras: $listaDeCompras');
  // Ou através do construtor Map()
  var listaDeCompras2 = Map();
  listaDeCompras2['chocolates'] = 2;
  print('listaDeCompras2: $listaDeCompras2');
  listaDeCompras2['refrigerantes'] = 4;
  print('listaDeCompras2: $listaDeCompras2');
  listaDeCompras2['carne'] = 1.5;
  print('listaDeCompras2: $listaDeCompras2');
  /**Os valores de um mapa podem ser acessados da mesma forma que construímos a variável com o construtor Map() */
  print('ListaDeCompras2["chocolates"]: ${listaDeCompras['chocolates']}'); // 2
  print('='*40);
  /**Caractere Unicode */
  print('O valor de [\u2665] é: \u2665');
  print('='*40);
  /** As runas expõe o unicode de um string e podem ser usadas para formar caracteres especiais como símbolos e emojis.*/
  Runes coracao = Runes('\u2665');
  print('String.fromCharCodes(coracao): ${String.fromCharCodes(coracao)}'); // ♥  
  print('='*40);
  /** Operadores de teste de tipos
   * São úteis para converter ou checar tipos de dados. Considere:
   * as --- converte o tipo de um objeto. Pode ser utilizado como uma versão enxuta do operador "is";
  */
  /*
  var Person;
  Person = "Bob Singer";

  var emp;
    if (emp is Person) {
  // Type check
  emp.firstName = 'Bob';
  }

  // com o operador "as"
  (emp as Person).firstName = 'Bob';
  */
  print('='*40);
  int num = 10;
  print('"num" is int ?: ${num is int}');
  print('"num" is! String ?: ${num is! String}');
  print('='*40);
  /** Operadores de atribuição*/
  // = --- utilizado para atribuir um valor a uma variável
  int umNumero = 2;
  print('O resultado de "int umNumero = 2;" => $umNumero');
  // += --- utilizado para somar um valor ao valor já existente na variável
  umNumero = 2;
  umNumero += 3;
  print('Valor para "umNumero += 3" qdo umNumero = 2 => $umNumero');
  // -= --- utilizado para subtrair um valor ao valor já existente na variável
  umNumero = 2;
  umNumero -= 1;
  print('Valor para "umNumero -= 1" qdo umNumero = 2 => $umNumero');
  // *= --- utilizado para multiplicar um valor ao valor já existente na variável
  umNumero = 2;
  umNumero *= 2;
  print('Valor para "umNumero *= 2" qdo umNumero = 2 => $umNumero');
  // /= --- utilizado para dividir um valor ao valor já existente na variável
  double outroNumero = 2.0;
  outroNumero /= 2;
  print('Valor para "outroNumero /= 2" qdo outroNumero = 2 => $outroNumero');
  // ~/= --- utilizado para dividir arredondando para baixo um valor ao valor já existente na variável
  umNumero = 5;
  umNumero ~/= 2;
  print('Valor para "umNumero ~/= 2 qdo umNumero = 5" => $umNumero');
  print('"~/=" é utilizado para dividir arredondando para baixo um valor ao valor já existente na variável');
  // % -- divide o primeiro valor pelo segundo e retorna o resto da divisão
  double doubleNumero = 10;
  doubleNumero /= 4;
  print('10/4 = $doubleNumero');
  doubleNumero %= 4;
  print('Resto da divisão de 10/4 é $doubleNumero');
  print('='*40);
  // Gerando uma lista de objetos
  final size = 5;
  final grid = List<List<int>>.generate(
    size, (i) => List<int>.generate(size, (j) => i * size + j)
  );
  print('Resultado: $grid');
  print('='*40);
  print('='*40);
  print('='*40);


}
