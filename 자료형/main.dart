void main() {
  String name = 'James';
  bool isAlive = true;
  int age = 20;
  double height = 170.5;
  List<String> friends = [
    'John',
    'Jane',
    'Doe',
  ];
  Map<String, dynamic> person = {
    'name': 'James',
    'age': 20,
    'isAlive': true,
  };

  bool giveMeFive = true;

// 요소 맨 끝에 쉼표를 붙이면 이렇게 보기 쉽게 정리해줌
  var numbers = [
    1,
    2,
    3,
    4,
    // if문 예시
    if (giveMeFive) 5,
  ];

  // 내부 if문은 이거랑 같음
  // if (giveMeFive) {
  //   print('giveMeFive is true');
  //   numbers.add(5);
  // }

  // string interpolation
  var greeting = 'Hello, my name is $name and I am ${age + 1} years old';

  print(greeting);

  var oldFriends = ['John', 'Jane', 'Doe'];

  var newFriends = [
    'Alice',
    'Bob',
    'Charlie',
    for (var friend in oldFriends) "old $friend",
  ];

  print(newFriends);
}
