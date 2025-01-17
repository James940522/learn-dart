void main() {
  print("Hello World");
  String name = 'James';
  print(name);
  var job = 'developer';
  print(name + ' is ' + job);
  print('$name is $job');

  var x;
  x = 10;
  print(x);
  x = 'Hello';
  print(x);

  dynamic y;
  y = 10;
  print(y);
  y = 'Hello';
  print(y);

  if (y is String) {
    print('y is a string');
  } else {
    print('y is not a string');
  }

  String? a;
  print(a);
  a = null;
  print(a);

  if (a != null) {
    a.isNotEmpty;
  }

  final c = 10;

  // c is a final variable, so it cannot be reassigned
  // c = 20;
}
