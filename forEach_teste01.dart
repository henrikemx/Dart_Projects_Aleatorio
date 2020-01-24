void main() {
  var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  print('='*30);
  list.forEach(
    (item) => print('${list.indexOf(item)}: $item')
  );
}