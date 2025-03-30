void main() {
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayMale();
  bts.sayName();
  bts.sayMembersCount();

  GirlGroup blackPink = GirlGroup('블랙핑크', 4);
  blackPink.sayFemale();
  blackPink.sayName();

  print(BoyGroup is Idol);
  print(GirlGroup is Idol);

  TimesTwo tt = TimesTwo(2);
  print(tt.calculate());
}

// _Idol를 붙이면 클래스 내부에서만 사용 가능한 변수가 된다.
// 외부에서는 접근 불가능하다.
// 캡슐화
// 캡슐화는 객체의 상태와 행동을 하나로 묶어서 외부에서 접근할 수 없도록 하는 것을 의미한다.
// 캡슐화는 객체의 속성과 메서드를 하나로 묶어서 외부에서 접근할 수 없도록 하는 것을 의미한다.
// 캡슐화는 객체의 속성과 메서드를 하나로 묶어서 외부에서 접근할 수 없도록 하는 것을 의미한다.

class _Idol {
  final String name;
  final List<String> members;

  // constructor
  _Idol(this.name, this.members);

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members} 입니다.');
  }

  // getter
  String get firstMember {
    return this.members[0];
  }

  // setter
  set firstMember(String member) {
    this.members[0] = member;
  }
}

class Idol {
  // 이름
  String name;

  int membersCount;
  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print('저는 $name 입니다.');
  }

  void sayMembersCount() {
    print('저희 $name 멤버는 $membersCount 명입니다.');
  }
}

// 상속 - inheritance
// 상속은 기존 클래스를 확장하여 새로운 클래스를 만드는 것을 의미한다.
// 상속은 기존 클래스의 속성과 메서드를 상속받아 새로운 클래스를 만드는 것을 의미한다.

class BoyGroup extends Idol {
  BoyGroup(String name, int membersCount)
      : super(name: name, membersCount: membersCount);

  void sayMale() {
    print('저는 남자 아이돌입니다.');
  }
}

class GirlGroup extends Idol {
  GirlGroup(String name, int membersCount)
      : super(name: name, membersCount: membersCount);

  void sayFemale() {
    print('저는 여자 아이돌입니다.');
  }
}

//overriding
// 상속받은 클래스에서 부모 클래스의 메서드를 재정의하는 것을 의미한다.

class TimesTwo {
  final int number;

  TimesTwo(this.number);

  int calculate() {
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(super.number);

  @override
  int calculate() {
    return super.calculate() * 2;
  }
}

// static
// static은 클래스 변수를 의미한다.
// 인스턴스에 귀속되지 않고 클래스에 귀속된다.
class Employee {
  String name;
  String position;
  String salary;
  static String? building;
  Employee(this.name, this.position, this.salary);

  void sayName() {
    print('저는 $name 입니다.');
  }

  void sayPosition() {
    print('저는 $position 입니다.');
  }

  void saySalary() {
    print('저는 $salary 입니다.');
  }

  void sayNameAndBuilding() {
    print('저는 $name 이고, 저희 회사는 $building 에 있습니다.');
  }
}

//abstract는 추상 클래스를 의미한다.
// 어떠한 클래스를 상속받아 사용하는 것을 의미한다.
// 추상 클래스는 인스턴스화 할 수 없다.
// 추상 클래스는 추상 메서드를 포함할 수 있다.
// 추상 메서드는 구현부가 없는 메서드를 의미한다.
// 추상 메서드는 상속받은 클래스에서 구현해야 한다.

abstract class Animal {
  void sayName();
}

class Dog extends Animal {
  @override
  void sayName() {
    print('멍멍');
  }
}

class Cat extends Animal {
  @override
  void sayName() {
    print('야옹');
  }
}
