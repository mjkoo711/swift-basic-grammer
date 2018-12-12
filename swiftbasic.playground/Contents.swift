
// 컬랙션 타입 (Collection Type)
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)

integers.contains(100)
integers.contains(99)

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

integers.count

print(integers.count)

var doubles: [Double] = [Double]()
doubles.append(100.1)

var strings: [String] = [String]()
var characters: [Character] = []

let immutableArray = [1, 2, 3]

var anyDictionary: [String: Any] = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary

anyDictionary.removeValue(forKey: "someKey")
anyDictionary

let initalizedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

initalizedDictionary

let someValue: String? = initalizedDictionary["name"]

var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)

integerSet
integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)

let sortedUnion: [Int] = union.sorted()

let intersection: Set<Int> = setA.intersection(setB)
let subtracting: Set<Int> = setA.subtracting(setB)

// 함수 기본 (Basic Function)
// MARK: 함수 선언의 기본 형태
// func 함수이름(매개변수1 이름: 매개변수1 타입, 매개변수2 이름: 매개변수2 타입 ...) -> 반환타입 {
//      함수구현
//      return 반환 값
// }
func sum(a: Int, b: Int) -> Int {
  return a + b
}

// MARK: 반환 값이 없는 함수
// func 함수이름(매개변수1 이름: 매개변수1 타입, 매개변수2 이름: 매개변수2 타입 ...) -> Void {
//      함수구현
// }

func printMyName(name: String) -> Void {
  print(name)
}

// 함수 고급
// MARK: 매개변수 기본 값
// 기본 값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋습니다.
// func 함수이름(매개변수1 이름: 매개변수1 타입 ... ) -> 반환타입 {
//      함수 구현
//      return 반환 값
// }
func greeting(friend: String, me: String = "yagom") {
  print("Hello \(friend), I'm \(me)")
}

// 매개변수 기본 값을 가지는 매개변수는 생략할 수 있다.
greeting(friend: "hana")
greeting(friend: "john", me: "eric")

// MARK: 전달인자 레이블
// 전달인자 레이블은 함수를 호출할 때, 매개변수의 역할을 좀 더 명확하게 하거나 함수 사용자의 입장에서 표현하고자 할 때 사용
// func 함수이름(전달인자 레이블 매개변수1 이름: 매개변수1 타입 ...) -> 반환타입 {
//      함수 구현부
//      return 반환 값
// }
func greeting(to friend: String, from me: String) { // 오버라이딩 가능한 함수 (위의 Greeting과)
  print("Hello \(friend)! I'm \(me)")
}

greeting(to: "hana", from: "yagom")

// MARK: 가변 매개변수 (함수당 1개의 가변 매개변수를 가질 수 있다)
// 전달받을 값의 개수를 알기 어려울 때 사용할 수 있습니다.
// 가변 매개변수는 함수당 하나만 가질 수 있습니다.
// 가변인자에 아무 값도 넘기고 싶지 않가면, 해당 label을 생략하면 된다.

// func 함수이름(매개변수1 이름: 매개변수1 타입...) -> 반환타입 {
//      함수 구현부
//      return 반환 값
// }

func sayHelloToFriends(me: String, friends: String...) -> String {
  return "Hello \(friends), I'm \(me))"
}

print(sayHelloToFriends(me: "yagom", friends: "hana", "eric", "wing"))
print(sayHelloToFriends(me: "yagom"))

// MARK: 데이터 타입으로써의 함수
// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어입니다.
// 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고
// 매개변수를 통해 전달할 수도 있습니다.

// MARK: 함수의 타입 표현
// 반환 타입을 생략할 수 있다.
// (매개변수1 타입, 매개변수2 타입 ...) -> 반환 타입
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "yagom")

func runAnother(function: (String, String) -> Void) {
  function("jenny", "mike")
}

runAnother(function: someFunction)


/* 조건문 */
// if문은 중괄호 생략이 절대 불가능

let someInteger = 100
if someInteger < 100 {
  print("100 미만")
} else if someInteger > 100 {
  print("100초과")
} else {
  print("100")
}

// switch (default 구문을 꼭 작성해주어야 한다)
// case 다음에 break를 해주지 않아도 무조건 break가 걸린다.
// fallthrough 키워드를 사용하면 break가 안걸리고 다음 조건까지 넘어간다.

// 범위 연산자를 활용하면 더 편하다.
// ..< : ~이상 ~미만
// ... : ~이상 ~이하
switch someInteger {
case 0:
  print("zero")
case 1..<100:
  print("1~99")
case 100:
  print("100")
case 101...Int.max:
  print("over 100")
default:
  print("unknown")
}

/* 반복문 */
var testIntegers: [Int] = [1, 2, 3]
let people: [String: Int] = ["yagom": 10, "eric": 15, "mike": 12]

// MARK: for-in
// for item in items {
//    code
// }

for integer in testIntegers {
  print(integer)
}

for (name, age) in people {
  print("\(name): \(age)")
}

// MARK: while
// while condition {
//    code
// }

while testIntegers.count > 1 {
  testIntegers.removeLast()
}

// MARK: repeat-while (same as do-while)
// repeat {
//    code
// } while condition
repeat {
  testIntegers.removeLast()
} while testIntegers.count > 0

/* Optional */
// => 값이 있을 수도 있고 없을 수도 있음.
// let someConstant: Int = nil => 오류 발생
// nil 가능성을 문서화 하지 않고도, 코드만으로도 표현할 수 있게 하기 위해서
// 전달받은 값이 옵셔널이 아니라면 nil체크를 안하고도 안심하고 사용 (효율적인 코딩, 예외 상황을 최소화하는 안전한 코딩)

func someOptionalExFunction(someOptionalParam: Int?) {
  // ...
}

func someOptionalExFunction(someParam: Int) {
  // ...
}

someOptionalExFunction(someOptionalParam: nil)
//someOptionalExFunction(someParam: nil) => 오류

let optionalValue: Optional<Int> = nil // Int? = nil

// ! vs ?
// ! : 암시적 추출 옵셔널
var ImplicitlyOptionalValue: Int! = 100
ImplicitlyOptionalValue = ImplicitlyOptionalValue + 1 // 기존 변수처럼 사용가능
ImplicitlyOptionalValue = nil // nil 할당 가능
//ImplicitlyOptionalValue = ImplicitlyOptionalValue + 1 => 잘못된 접근으로 인한 런타임 오류 발생

// ? : 일반적 Optional
// 기존 변수처럼 사용 불가 (옵셔널과 일반 값은 다른 타입이므로 연산 불가)

/* 옵셔널을 꺼내오는 방법 2가지 */
// 1. 옵셔널 바인딩 (if-let)
// => nil 체크 + 안전한 값 추출
func printName(_ name: String) {
  print(name)
}

var my2Name: String! = nil //optinal 타입

if let name: String = my2Name {
  printName(name)
} else {
  print("myName == nil")
}

var myName: String? = "yagom"
var yourname: String? = nil

/* 구조체 */
// MARK: 정의
// struct NAME {
//    구현부
// }

struct Sample {
  var mutableProperty: Int = 100 //가변 프로퍼티
  let immutableProperty: Int = 100 //불변 프로퍼티
  
  static var typeProperty: Int = 100 //타입 프로퍼티
  
  //인스턴스 메서드
  func instanceMethod() {
    print("instance method")
  }
  
  static func typeMethod() {
    print("type method")
  }
}

// MARK: 구조체 사용
// 가변 인스턴스
var mutable: Sample = Sample()

mutable.mutableProperty = 200
//mutable.immutableProperty = 200 이건 안됌

//불변 인스턴스
let immutable: Sample = Sample()

//타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod()

// MARK: 학생 구조체
struct Student {
  var name: String = "unknown"
  var `class`: String = "Swift"
  
  static func selfIntroduce() {
    print("학생타입입니다")
  }
  
  func selfIntroduce(){
    print("저는 \(self.class) 반 \(name)입니다.")
  }
}

Student.selfIntroduce()

var yagom: Student = Student()
yagom.name = "yagom"
yagom.class = "스위프트"
yagom.selfIntroduce()

let jina: Student = Student()
jina.selfIntroduce()

/* 클래스 */
// MARK: 정의 => 참조타입, 다중상속 안됨
// class 이름 {
//    구현부
// }

class classSample {
  var mutableProperty: Int = 100
  let immutableProperty: Int = 100
  
  static var typeProperty: Int = 100
  
  func instanceMethod() {
    print("instance method")
  }
  
  // 타입 메서드
  // 재정의 불가 타입 메서드 - static
  static func typeMethod() {
    print("type method - static class")
  }
  
  // 재정의 가능 타입 매서드 - class (상속 시)
  class func classMethod() {
    print("type method - class")
  }
}

// Mark: 클래스 사용
var mutableReference: classSample = classSample()

// Mark: 학생 클래스
class studentClass {
  var name: String = "unknown"
  var `class`: String = "Swift"
  
  class func selfIntroduce() {
    print("학생타입입니다.")
  }
  
  func selfIntroduce() {
    print("저는 \(self.class)반 \(name)입니다")
  }
}

studentClass.selfIntroduce()

var yagomReference: studentClass = studentClass()
yagomReference.name = "yagom"
yagomReference.class = "스위프트"
yagomReference.selfIntroduce()

let jinaReference: studentClass = studentClass()
//jina.name = "jina"
//jina.selfIntroduce()

/* 열거형 */
// MARK: 정의
// enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의한다.
// 각 case는 소문자 카멜 케이스로 정의한다.
// 각 case는 그 자체가 고유의 값입니다.

enum Weekday {
  case mon
  case tue
  case wed
  case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon //자료형을 명시해주기 때문에, .만 쓰고 열거형을 사용할 수 있다.
day = .tue

print(day)

switch day {
case .mon, .tue, .wed, .thu:
  print ("평일입니다")
case .fri:
  print ("불금")
case .sat, .sun:
  print("주말입니다")
}

// C 언어의 enum처럼 정수값을 가질 수도 있습니다.
// rawValue를 사용하면 됩니다.
// case별로 각각 다른 값을 가져야합니다. =-> 자동으로 1씩 증가 가능
enum Fruit: Int {
  case apple = 0
  case grape = 1
  case peach
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")

// 정수 타입 뿐만 아니라
// Hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있다.
enum School: String {
  case elementary = "초등"
  case middle = "중등"
  case high = "고등"
  case university
}

print(School.university.rawValue) // case이름을 그대로 가져옴

// MARK: 원시 값을 통한 초기화
//rawValue를 통해 초기화할 수 있습니다.
//rawValue가 case에 해당하지 않을 수 있으므로
//rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입입니다.

//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5) {
  print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
  print("rawValue 5에 해당하는 케이스가 없습니다")
}

// MARK: 메서드
enum Month {
  case dec, jan, feb
  case mar, apr, may
  case jun, jul, aug
  case sep, oct, nov
  
  func printMessage() {
    switch self {
    case .mar, .apr, .may:
      print("따스한 봄")
    case .jun, .jul, .aug:
      print("무더운 여름")
    case .sep, .oct, .nov:
      print("쌀쌀한 가을")
    case .dec, .jan, .feb:
      print("추운 겨울")
    }
  }
}

Month.mar.printMessage()

/* 값 타입과 참조 타입 */
// 구조체를 사용하는 경우 : 참조가 아닌 복사를 원할 때, 상속받을 필요가 없을 때
// apple framework에서 프로그래밍을 할 때에는 주로 클래스를 많이 사용
// MARK: Class vs. Struct/Enum

struct ValueType {
  var property = 1
}

class ReferenceType {
  var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2 // 이것만 바뀜

let firstClassReference = ReferenceType()
var secondClassReference = firstStructInstance
secondClassReference.property = 2 //first, second 다바뀜

/* 클로저 */
// 코드의 블럭
// 일급 시민 (first-citizen)
// 변수, 상수 등으로 저장, 전달인자로 전달이 가능
// 함수: 이름이 있는 클로저

// MARK: 정의
// { (매개변수 목록) -> 반환 타입 in
//    실행코드
// }

// 함수를 사용한다면
func sumOfFunction(a: Int, b: Int) -> Int {
  return a + b
}

var sumResult: Int = sumOfFunction(a: 1, b: 2)
print(sumResult)

// 클로저의 사용
var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
  return a + b
}

sumResult = sum(1, 2)
print(sumResult)

let add: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
  return a + b
}

let substract: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
  return a - b
}

let divide: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
  return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
  return method(a, b)
}

var calculated: Int?
calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
  return left * right
})

print(calculated!)

/* 클로저 고급 */
// 1. 후행 클로저
// 2. 반환타입 생략
// 3. 단축 인자이름
// 4. 암시적 반환 표현

// MARK: 1. 후행 클로저
// 클로저가 함수의 마지막 전달 인자라면
// 마지막 매개변수 이름을 생략한 후
// 함수 소괄호 외부에 클로저를 구현할 수 있다.
var result: Int = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
  return left + right
}
print(result)

// MARK: 2. 반환타입 생략
// calculate 함수의 method 매개변수는
// Int 타입을 반환할 것이라는 사실을 컴파일러도 알기 때문에
// 굳이 클로저에서 반환 타입을 명시해주지 않아도 됩니다.
// 대신 in 키워드는 생략할 수 없습니다.
result = calculate(a: 20, b: 20) { (left: Int, right: Int) in
  return left + right
}
print(result)

// MARK: 3. 단축 인자 이름
// 클로저의 매개변수 이름이 굳이 불필요하다면 단축 인자 이름을 활용할 수 있습니다.
// 단축 인자의 이름은 클로저의 매개변수 순서대로 $0, $1 ... 처럼 표현합니다.
result = calculate(a: 30, b: 30, method: {
  return $0 + $1
})
print(result)

// 당연히 후행 클로저와 함께 사용할 수 있습니다.
result = calculate(a: 10, b: 10) {
  return $0 + $1
}

// MARK: 4. 암시적 반환 표현
// 클로저가 반환하는 값이 있다면
// 클로저의 마지막 줄의 결과 값은 암시적으로 반환 값으로 취급합니다.
// 한줄로도 작성이 가능
result = calculate(a: 10, b: 10) { $0 + $1 }

/* 프로퍼티 */
// 저장 프로퍼티, 연산 프로퍼티, 인스턴스 프로퍼티, 타입 프로퍼티

// 프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있습니다.
// 다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있습니다.
// 연산 프로퍼티는 var로만 선언할 수 있습니다.

// MARK: 정의
struct Buzzvil {
  // 인스턴스 저장 프로퍼티
  var name: String = ""
  var `class`: String = "Swift"
  var koreanAge: Int = 0
  
  //인스턴스 연산 프로퍼티
  var westernAge: Int {
    get {
      return koreanAge - 1
    }
    set{ // set(inputValue)
      koreanAge = newValue + 1 // koreanAge = inputValue + 1
    }
  }
  
  //타입 저장 프로퍼티
  static var typeDescription: String = "학생"
  
  // 읽기 전용 인스턴스 연산 프로퍼티
  var selfIntroduction: String {
    get {
      return "저는 \(self.class)반 \(name)입니다"
    }
  }
  
  // 읽기 전용 타입 연산 프로퍼티
  // 읽기 전용에서는 get을 생략할 수 있습니다.
  static var selfIntroduction: String {
    return "학생 타입입니다."
  }
}

// MARK: 사용

// 타입 연산 프로퍼티 사용
print(Buzzvil.selfIntroduction)

// 인스턴스 생성
var mj: Buzzvil = Buzzvil()
mj.koreanAge = 10

// 인스턴스 저장 프로퍼티 사용
mj.name = "MJ"
print(mj.name)

// 인스턴스 연산 프로퍼티 사용
print(mj.selfIntroduction)
print("제 한국나이는 \(mj.koreanAge)살이고, 미국나이는 \(mj.westernAge)살 입니다.")

// MARK: 응용
struct Money {
  var currencyRate: Double = 1100
  var dollar: Double = 0
  var won: Double {
    get {
      return dollar * currencyRate
    }
    set {
      dollar = newValue / currencyRate
    }
  }
}

var moneyInMyPocket = Money()
moneyInMyPocket.won = 11000
print(moneyInMyPocket.won)

moneyInMyPocket.dollar = 10
print(moneyInMyPocket.won)

// MARK: 지역변수, 전역변수
// 저장 프로퍼티와 연산 프로퍼티의 기능은
// 함수, 메서드, 클로저, 타입 등의 외부에 위치한
// 지역/전역 변수에도 모두 사용 가능합니다.
var aaa: Int = 100
var bbb: Int = 200
var sumaaabbb: Int {
  return aaa + bbb
}
print(sumaaabbb)

/* 프로퍼티 감시자 */
// 프로퍼티 감시자를 사용하면 프로퍼티 값이 변경될 떄 원하는 동작을 수행할 수 있따.
// MARK: 정의

struct MoneyMoney {
  // 프로퍼티 감시자 사용
  var currencyRate: Double = 1100 {
    willSet(newRate) {
      print("환율이 \(currencyRate)에서 \(newRate)로 변경될 예정입니다")
    }
    didSet(oldRate) {
      print("환율이 \(oldRate)에서 \(currencyRate)로 변경되었습니다.")
    }
  }
  
  // 프로퍼티 감시자
  var dollar: Double = 0 {
    willSet {
      // willSet의 암시적 매개변수 이름 newValue
      print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다.")
    }
    didSet {
      // didSet의 암시적 매개변수 이름 oldValue
      print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다.")
    }
  }
  
  // 연산 프로퍼티
  var won: Double {
    get {
      return dollar * currencyRate
    }
    set {
      dollar = newValue / currencyRate
    }
  }
}

// MARK: 사용
var moneyMoney: MoneyMoney = MoneyMoney()

// 환율이 1100.0에서 1150.0으로 변경될 예정입니다.
moneyMoney.currencyRate = 1150
// 환율이 1100.0에서 1150.0으로 변경되었습니다.

// 0.0달러에서 10.0 달러로 변경될 예정입니다.
moneyMoney.dollar = 10
// 0.0달러에서 10.0 달러로 변경되었습니다.

//프로퍼티 감시자의 기능은
// 함수, 메서드, 클로저, 타입 등의 외부에 위치한
// 지역&전역 변수에도 모두 사용 가능

var aa: Int = 100 {
  willSet {
    print("\(aa)에서 \(newValue)로 변경 될 예정입니다.")
  }
  didSet {
    print("\(oldValue)에서 \(aa)로 변경되었습니다.")
  }
}

// 100에서 200으로 변경될 예정
aa = 200
// 100에서 200으로 변경됨.

/* 상속 */
// 스위프트의 상속은 클래스, 프로토콜 등에서 사용가능합니다.
// 열거형, 구조체에서는 상속이 불가능 합니다.
// 스위프트는 다중 상속을 지원하지 않습니다.
// 이번 파트에서는 클래스의 상속에 대해서 알아봅니다.

// MARK: 클래스의 상속과 재정의
// class 이름: 상속받을 클래스 이름 {
//    구현부
// }

class Person {
  var name: String = ""
  
  func selfIntroduce() {
    print("저는 \(name)입니다.")
  }
  
  // final 키워드를 사용하여 재정의를 방지할 수 있습니다.
  final func sayHello() {
    print("hello")
  }
  
  // 타입 메서드
  // 재정의 불가 타입 매서드 - static
  static func typeMethod() {
    print("type method - static")
  }
  
  // 재정의 가능 타입 메서드 - class
  class func classMethod() {
    print("type method - class")
  }
  
  // 재정의 가능한 class 메서드라도
  // final 키워드를 사용하면 재정의할 수 없습니다.
  // 메서듸 앞의 `static`과 `final class`는 똑같은 역할을 합니다.
  final class func finalClassMethod() {
    print("type method - final class")
  }
}

class Buzzvilian: Person {
  // var name: String -> 저장 프로퍼티는 재정의를 할 수 없다.
  var major: String = ""
  
  override func selfIntroduce() {
    print("저는 \(name)이고, 전공은 \(major)입니다.")
//    super.selfIntroduce()
  }
  
  override class func classMethod() {
    print("overriden type method - class")
  }
  
  // static을 사용한 타입 메서드는 재정의 할 수 없습니다.
  // override static func typeMethod() {}
  
  // final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없습니다.
  // override func sayHello() {}
  // override class func finalClassMethod() {}
}

let mjkoo: Person = Person()
let hana: Buzzvilian = Buzzvilian()

mjkoo.name = "mjkoo"
hana.name = "hana"
hana.major = "Swift"

mjkoo.selfIntroduce()
hana.selfIntroduce()
Person.classMethod()
Person.finalClassMethod()
Buzzvilian.classMethod()

/* 인스턴스의 생성과 소멸 */
// initializer vs. deinitializer
// init, deinit

// MARK: 프로퍼티 기본 값
// 스위프트의 모든 인스턴스는 초기화와 동시에
// 모든 프로퍼티에 유효한 값이 할당되어 있어야 합니다.
// 프로퍼티에 미리 기본값을 할당해두면
// 인스턴ㅅ 가 생성됨과 동시에 초기값을 지니게 됩니다.

class PersonA {
  //모든 저장 프로퍼티에 기본 값 할당
  var name: String = "unknown"
  var age: Int = 0
  var nickName: String = "nick"
}

let jason: PersonA = PersonA()
jason.name = "jason"
jason.age = 30
jason.nickName = "J"

// MARK: 이니셜라이저
// 프로퍼티 기본 값을 지정하기 어려운 경우에는
// 이니셜라이저를 통해
// 인스턴스가 가져야 할 초기 값을 전달할 수 있습니다.

class PersonB {
  var name: String
  var age: Int
  var nickName: String
  
  // 이니셜라이저
  init(name: String, age: Int, nickName: String) {
    self.name = name
    self.age = age
    self.nickName = nickName
  }
}

let lucas: PersonB = PersonB(name: "lucas", age: 29, nickName: "KOO")

// MARK: 프로퍼티의 초기값이 꼭 필요 없을 때
// 옵셔널을 사용

class PersonC {
  var name: String
  var age: Int
  var nickname: String?
  
  init(name: String, age: Int, nickName: String) {
    self.name = name
    self.age = age
    self.nickname = nickName
  }
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
}

let mike: PersonC = PersonC(name: "mike", age: 30)

// 암시적 추출 옵셔널은
// 인스턴스 사용에 꼭 필요하지만
// 초기값을 할당하지 않고자 할 떄 사용
class Puppy {
  var name: String
  var owner: PersonC!
  
  init(name: String) {
    self.name = name
  }
  
  func goOut() {
    print("\(name)가 주인 \(owner.name)와 산책을 합니다")
  }
}

let happy: Puppy = Puppy(name: "happy")
happy.owner = mike
happy.goOut()
// happy가 주인 mike와 산책을 합니다.

// MARK: 실패 가능한 이니셜라이저
// 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우
// 인스턴스 생성에 실패할 수 있다.
// 인스턴스 생성에 실패하면 nil을 반환한다.
// 그래서 실패가능한 이니셜라이저의 반환 타입은 옵셔널 타입니다.

class PersonD {
  var name: String
  var age: Int
  var nickName: String?
  
  init?(name: String, age: Int) {
    if (0...120).contains(age) == false {
      return nil
    }
    
    if name.count == 0 {
      return nil
    }
    
    self.name = name
    self.age = age
  }
}
//let john: PersonD = PersonD(name: "john", age: 23)
let john: PersonD? = PersonD(name: "john", age: 23)
let joker: PersonD? = PersonD(name: "joker", age: 123) //  nil
let batman: PersonD? = PersonD(name: "", age: 10) // nil

// MARK: 디이니셜라이저

// deinit은 클래스의 인스턴스가
// 메모리에서 해제되는 시점에 자동으로 호출됩니다.
// 인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있습니다.
class PersonE {
  var name: String
  var pet: Puppy?
  var child: PersonC
  
  init(name: String, child: PersonC) {
    self.name = name
    self.child = child
  }
  
  deinit {
    if let petName = pet?.name {
      print("\(name)가 \(child.name)에게 \(petName)을 인도합니다")
      self.pet?.owner = child
    }
  }
}

var donald: PersonE? = PersonE(name: "donald", child: mike)
donald?.pet = happy
donald = nil // donal 인스턴스가 더이상 필요 없으므로 메모리에서 해제 됩니다.
// donal가 jenny에게 happy를 인도합니다.

/* 옵셔널 체이닝 */
// 옵셔널 체이닝은 옵셔널 요소 내부의 프로퍼티의
// 또다시 옵셔널이 연속적으로 연결되는 경우 유용하게 사용할 수 있습니다.
class PersonF {
  var name: String
  var job: String?
  var home: Apartment?
  
  init(name: String) {
    self.name = name
  }
}

class Apartment {
  var buildingNumber: String
  var roomNumber: String
  var `guard`: PersonF?
  var owner: PersonF?
  
  init(dong: String, ho: String) {
    buildingNumber = dong
    roomNumber = ho
  }
}

let mjKoo: PersonF? = PersonF(name: "mjKoo")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: PersonF? = PersonF(name: "superman")

// 옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로
// 결과 타입도 옵셔널입니다.

// 만약 우리집의 경비원의 직업이 궁금하다면?

// 옵셔널 체이닝을 사용하지 않는다면 ..
func guardJob(owner: PersonF?) {
  if let owner = owner {
    if let home = owner.home {
      if let `guard` = home.guard {
        if let guardJob = `guard`.job {
          print("우리집 경비원의 직업은 \(guardJob)입니다.")
        } else {
          print("우리집 경비원은 직업이 없어요")
        }
      }
    }
  }
}

guardJob(owner: mjKoo)

//옵셔널 체이닝을 사용한다면
func guardJobWithOptionalChaining(owner: PersonF?) {
  if let guardJob = owner?.home?.guard?.job {
    print("우리집 경비원의 직업은 \(guardJob)입니다")
  } else {
    print("우리집 경비원은 직업이 없어요")
  }
}

guardJobWithOptionalChaining(owner: mjKoo)

mjKoo?.home?.guard?.job // nil

mjKoo?.home = apart

mjKoo?.home // Optional(Apartment)
mjKoo?.home?.guard //nil

mjKoo?.home?.guard = superman

mjKoo?.home?.guard // Optional(PersonF)

mjKoo?.home?.guard?.name // superman
mjKoo?.home?.guard?.job // nil

mjKoo?.home?.guard?.job = "경비원"

// nil 병합 연산자
var guardJob: String

guardJob = mjKoo?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 경비원

mjKoo?.home?.guard?.job = nil
guardJob = mjKoo?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 슈퍼맨


/* 타입 캐스팅 */
// 스위프트의 타입캐스팅은
// 인스턴스의 타입을 확인하는 용도
// 또는 클래스의 인스턴스를
// 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지
// 확인하는 용도로 사용됩니다.
// is, as를 사용합니다.

// let someInt: Int = 100
// let someDouble: Double = Double(someInt) => 이건 타입캐스팅이 아니라, instance를 하나 더 생성해주는 꼴

// 타입캐스팅을 위한 클래스 정의
class PersonG {
  var name: String = ""
  func breath() {
    print("숨을 쉽니다")
  }
}

class StudentG: PersonG {
  var school: String = ""
  func goToSchool() {
    print("등교를 합니다")
  }
}

class UniversityStudentG: StudentG {
  var major: String = ""
  func gotoMT() {
    print("엠티를 갑니다")
  }
}

var minjun: PersonG = PersonG()
var summer: StudentG = StudentG()
var whale: UniversityStudentG = UniversityStudentG()

// MARK: 타입 확인
// is를 사용하여 타입을 확인합니다.
var resultG: Bool

resultG = minjun is PersonG
resultG = minjun is StudentG
resultG = minjun is UniversityStudentG

resultG = summer is PersonG
resultG = summer is StudentG
resultG = summer is UniversityStudentG

resultG = whale is PersonG
resultG = whale is StudentG
resultG = whale is UniversityStudentG

if minjun is UniversityStudentG {
  print("minjun은 대학생입니다")
} else if minjun is StudentG {
  print("minjun은 학생입니다")
} else if minjun is PersonG {
  print("minjun은 사람입니다")
}

switch whale {
case is PersonG:
  print("whale은 사람입니다")
case is StudentG:
  print("whale은 학생입니다")
case is UniversityStudentG:
  print("whale은 대학생입니다")
}

// MARK: 업 캐스팅
// as를 사용하여 부모클래스의 인스턴스로 사용할 수 있도록
// 컴파일러에서 타입정보를 전환해줍니다.
// Any 혹은 AnyObject로도 타입 정보를 변환할 수 있습니다.
// 암시적으로 처리되므로 생략해도 무방합니다.

var ethan: PersonG = UniversityStudentG() as PersonG // 대학생은 사람G입니다., 실질적으로는 대학생 타입
var lenny: StudentG = StudentG()
//var siwa: UniversitySTudentG = Person() as UniversitySTudentG // 컴파일 오류
var siwa: Any = Person() //as Any //생략가능

// MARK: 다운 캐스팅
// as?(조건부 다운캐스팅), as!(강제 다운캐스팅)
// 자식클래스의 인스턴스로 사용할 수 있도록
// 컴파일러에게 인스턴스의 타입정보를 전환해줍니다.

// MARK: 조건부 다운 캐스팅
// as?

var optionalCasted: StudentG?
optionalCasted = ethan as? UniversityStudentG // 실질적으로는 대학생 타입이기 때문에 이게 가능하다
optionalCasted = lenny as? UniversityStudentG //nil
optionalCasted = siwa as? UniversityStudentG //nil
optionalCasted = siwa as? StudentG //nil

// MARK: 강제 다운 캐스팅
// as!

var forcedCasted: StudentG

forcedCasted = ethan as! UniversityStudentG
//forcedCasted = lenny as! UniversityStudentG
//forcedCasted = siwa as! UniversityStudentG
//forcedCasted = siwa as! StudentG

// 활용
func doSomeThing(someone: PersonG) {
  if let universityStudent = someone as? UniversityStudentG {
    universityStudent.gotoMT()
  } else if let student = someone as? StudentG {
    student.goToSchool()
  } else if let person = someone as? PersonG {
    person.breath()
  }
}

doSomeThing(someone: ethan as PersonG)
doSomeThing(someone: ethan)
doSomeThing(someone: lenny)
doSomeThing(someone: minjun)


/* assert와 guard */
// 애플리케이션이 동작 도중에 생성하는 다양한 결과값을
// 동적으로 확인하고 안전하게 처리할 수 있도록
// 확인하고 빠르게 처리할 수 있습니다.

// MARK: Assertion
// assert(_:_:file:line:) 함수를 사용합니다.
// assert 함수는 디버깅 모드에서만 동작합니다.
// 배포하는 애플리케이션에서는 제외됩니다.
// 주로 디버깅 중 조건의 검증을 위하여 사용합니다.

var someInts: Int = 0

assert(someInts == 0, "someInts != 0")

someInts = 1
// assert(someInts == 0)
// assert(someInts == 0, "someInts != 0")

func functionWithAssert(age: Int?) {
  assert(age != nil, "age == nil")
  assert((age! > 0) && (age! <= 130), "나이 값이 잘못 입력되었습니다.")
  print("당신의 나이는 \(age!)입니다.")
}

functionWithAssert(age: 50)
//functionWithAssert(age: -1) // 도앚ㄱ 중지, 검증 실패


// MARK: Early Exit
// guard를 사용하여 잘못된 값의 전달 시
// 특정 실행구문을 빠르게 종료합니다
// 디버깅 모드 뿐만 아니라 어떤 조건에서도 동작합니다
// guard의 else 블럭 냅에는
// 특정 코드 블럭을 종료하는 지시어(return, break 등)가
// 꼭 있어야 합니다.
// 타입 캐스팅, 옵셔널과도 자주 사용됩니다.
// 그 외 단순한 조건 판단후 빠르게 종료될 때도 용이합니다.

func functionWithGuard(age: Int?) {
  guard let unwrappedAge = age, unwrappedAge < 130, unwrappedAge >= 0 else {
    print("나이값 입력이 잘못되었습니다.")
    return
  }
  
  print("당신의 나이는 \(unwrappedAge)세 입니다.")
}

var counts = 1

while true {
  guard counts < 3 else {
    break
  }
  print(counts)
  counts += 1
}

func someFunctions(info: [String: Any]) {
  guard let name = info["name"] as? String else {
    return
  }
  guard let age = info["age"] as? Int, age >= 0 else {
    return
  }
  print("\(name): \(age)")
}

someFunctions(info: ["name": "jenny", "age":10])

/* 프로토콜 */
// 프로토콜은 특정 역할을 수행하기 위한
// 메서드, 프로퍼티, 이니셜라이저 등의 요구사항을 정의합니다.

// 구조체, 클래스, 열거형은 프로토콩르 채택(Adopted)해서
// 프로토콜의 요구사항을 실제로 구현할 수 있습니다.
// 어떤 프로토콜의 요구사항을 모두 따르는 타입음
// 그 '프로토콜을 준수한다(Conform)' 고 표현합니다.
// 프로토콜의 요구사항을 충족시키려면 ㅡ로토콜이 제시하는 기능을
// 모두 구현해야 합니다.

// MARK: 정의 문법
// protocol 프로토콜 이름 {
//    정의부
// }

protocol Talkable {
  // 프로퍼티 요구
  // 프로퍼티 요구는 항상 var 키워드를 사용합니다.
  // get은 읽기만 가능해도 상관 없다는 뜻이며,
  // get과 set을 모두 명시하면
  // 읽기 쓰기 모두 가능한 프로퍼티어야 합니다.
  var topic: String { get set }
  var language: String { get }
  
  // 메서드 요구
  func talk()
  
  // 이니셜라이저 요구
  init(topic: String, language: String)
}

// MARK: 프로토콜 채택 및 준수
// PersonH구조체는 Talkable 프로토콜을 채택했습니다
struct PersonH: Talkable {
  var topic: String
  let language: String
  
  //읽기 전용 프로퍼티 요구는 연산 프로퍼티로 대체가 가능합니다
  // var language: String { return "한국어" }
  
  //물론 읽기, 쓰기 프로퍼티도 연산 프로퍼티로 대체할 수 있습니다.
  // var subject: String = ""
  // var topic: String {
  //    set {
  //        self.subject = newValue
  //    }
  //    get {
  //        return self.subject
  //    }
  
  func talk() {
    print("\(topic)에 대해 \(language)로 말합니다")
  }
  
  init(topic: String, language: String) {
    self.topic = topic
    self.language = language
  }
}

// MARK: 프로토콜 상속
// 프로토콜은 클래스와 다르게 다중상속이 가능합니다.

//protocol 프로토콜 이름: 부모 프로토콜 이름 목록 {
//  /* 정의부 */
//}

protocol Readable {
  func read()
}
protocol Writable {
  func write()
}
protocol ReadSpeakable: Readable {
  func speak()
}
protocol ReadWriteSpeakable: Readable, Writable {
  // func read()
  // func write()
  func speak()
}

struct SomeType: ReadWriteSpeakable {
  func read() {
    print("Read")
  }
  func write() {
    print("Write")
  }
  func speak() {
    print("Speak")
  }
}

// MARK: 클래스 상속과 프로토콜
// 클래스에서 상속과 프로토콜 채택을 동시에 하려면
// 상속받으려는 클래스를 먼저 명시하시고
// 그 뒤에 채택할 프로토콜 목록을 작성합니다
class SuperClass: Readable {
  func read() { print("Read") }
}

class SubClass: SuperClass, Writable, ReadSpeakable {
  func write() { print("write") }
  func speak() {
    print("SpeaK")
  }
}

// MARK: 프로토콜 준수 확인
// 인스턴스가 특정 프로토콜을 준수하는 지 확인할 수 있습니다.
// is, as 연산자 사용

let sup: SuperClass = SuperClass()
let sub: SubClass = SubClass()

var someAny: Any = sup
someAny is Readable // true
someAny is ReadSpeakable // false

someAny = sub
someAny is Readable // true
someAny is ReadSpeakable // true

someAny = sup

if let someReadable: Readable = someAny as? Readable {
  someReadable.read()
}

if let someReadSpeakable: ReadSpeakable = someAny as? ReadSpeakable {
  someReadSpeakable.speak()
  //동작하지 않음
}

someAny = sub
if let someReadable: Readable = someAny as? Readable {
  someReadable.read()
}

/* 익스텐션 */

// 익스텐션은 구조체, 클래스, 열거형, 프로토콜 타이에
// 새로운 기능을 추가할 수 있는 기능입니다.
// 기능을 추가하려는 타입의 구현된 소스코드를
// 알지 못하거나 볼수 없다해도,
// 타입만 알고 있따면 그 타입의 기능을 확장할 수도 있습니다.

//익스텐션으로 추가할 수 있는 기능
// 연산 타입 프로퍼티 / 연산 인스턴스 프로퍼티
// 타입 메서드
// 인스턴스 메서드
// 이니셜라이저
// 서브스크립트
// 중첩타입
// 특정 프로토콜을 준수할 수 있또록 기능 추가

//기존에 존재하는 기능을 재정의할 순 없습니다.

// MARK: 정의 문법
// extension 확장할 타이 이름 {
//    타이에 추가될 새로운 구현 기능
// }

// 익스텐션은 기존에 존재하는 타이이
// 추가적으로 다른 프로토콜을 채택할 수 있또록
// 확장할 수 있스니다.

// extension 확장할 타입 이름: 프로토콜1, 프로토콜2, 프로토콜3 ... {
//    프로토콜 요구사항 구현
// }

// MARK: 익스텐션 구현
// MARK: 연산 프로퍼티 추가

extension Int {
  var isEven: Bool {
    return self % 2 == 0
  }
  var isOdd: Bool {
    return self % 2 == 1
  }
}

print(1.isEven)
print(1.isOdd)

var number: Int = 3
print(number.isEven)
print(number.isOdd)

number = 2
print(number.isEven)
print(number.isOdd)

extension Int {
  func multiply(by n: Int) -> Int {
    return self * n
  }
}

print(3.multiply(by: 2)) // 6
print(4.multiply(by: 5)) // 20

// MARK: 이니셜라이저ㅏ 추가
extension String {
  init(intTypeNumber: Int) {
    self = "\(intTypeNumber)"
  }
  
  init(doubleTypeNumber: Double) {
    self = "\(doubleTypeNumber)"
  }
}

let stringFromInt: String = String(intTypeNumber: 100)
// "100"

let stringFromDouble: String = String(doubleTypeNumber: 100.0)
// "100.0"


/* 오류표현 */
// MARK: 오류표현
// Error 프로토콜과 (주로) 열거형을 통해서 오류를 표현합니다.

// enum 오류종류 이름: Error {
//    case 종류1
//    case 종류2
//    case 종류3
//    ..
// }

// 자판기 동작 오류의 종류를 표현한 VendingMachineErroe 열거형
enum VendingMachineError: Error {
  case invalidInput
  case insufficientFunds(moneyNeeded: Int)
  case outOfStock
}

// MARK: 함수에서 발생한 오류 던지기
// 자판기 동장 도중 발생한 오류 던지기
// 오류 발생의 여지가 있는 메서드는 throws를 사용하여
// 오류를 내포하는 함수임을 표시합니다.
class VendingMachine {
  let itemPrice: Int = 100
  var itemCount: Int = 5
  var deposited: Int = 0
  
  // 돈받기 메서드
  func receiveMoney(_ money: Int) throws {
    // 입력한 돈이 0 이하면 오류를 던집니다.
    guard money > 0 else {
      throw VendingMachineError.invalidInput
    }
    
    // 오류가 없으면 정상처리 합니다
    self.deposited += money
    print("\(money)원 받음")
  }
  
  // 물건 팔기 메서드
  func vend(numberOfItems numberOfItemsToVend: Int) throws -> String {
    //원하는 아이템의 수량이 잘못 입력되었으면 오류를 던집니다.
    guard numberOfItemsToVend > 0 else {
      throw VendingMachineError.invalidInput
    }
    
    // 구매하려는 수량보다 미리 넣어둔 돈이 적으면 오류를 던집니다.
    guard numberOfItemsToVend * itemPrice <= deposited else {
      let moneyNeeded: Int
      moneyNeeded = numberOfItemsToVend * itemPrice - deposited
      
      throw VendingMachineError.insufficientFunds(moneyNeeded:  moneyNeeded)
    }
    
    // 구매하려는 수량보다 요구하는 수량이 많으면 오류를 던집니다.
    guard itemCount >= numberOfItemsToVend else {
      throw VendingMachineError.outOfStock
    }
    
    // 오류가 없으면 정상처리를 합니다.
    let totalPrice = numberOfItemsToVend * itemPrice
    
    self.deposited -= totalPrice
    self.itemCount -= numberOfItemsToVend
    
    return "\(numberOfItemsToVend)개 제공함"
  }
}

// 자판기 인스턴스
let machine: VendingMachine = VendingMachine()

// 판매 결과를 전달받을 변수
var results: String?

// MARK: 오류 처리

//오류 발생의 여지가 있는 throws 함수(메서드)는
// try를 사용하여 호출해야 합니다.
// try, try?, try!

// MARK: do-catch
// 오류 바생의 여지가 있는 throws 함수(메서드)는
// do-catch 구문을 활용하여
// 오류 발생에 대비합니다

do {
  try machine.receiveMoney(0)
} catch VendingMachineError.invalidInput {
  print("입력이 잘못되었습니다.")
} catch VendingMachineError.insufficientFunds(let moneyNeeded) {
  print("\(moneyNeeded)원이 부족합니다")
} catch VendingMachineError.outOfStock {
  print("수량이 부족합니다.")
}

do {
  try machine.receiveMoney(300)
} catch /* (let error) */ {
  switch error {
  case VendingMachineError.invalidInput:
    print("입력이 잘못되었습니다")
  case VendingMachineError.insufficientFunds(let moneyNeeded):
    print("\(moneyNeeded)원이 부족합니다")
  case VendingMachineError.outOfStock:
    print("재고가 부족합니다")
  default:
    print("알수 없는 오류")
  }
}

do {
  results = try machine.vend(numberOfItems: 4)
} catch {
  print(error)
} // insufficientFunds(100)

do {
  results = try machine.vend(numberOfItems: 4)
}

// MARK: try?와 try!

// try?
// 별도의 오류처리 결과를 통보받지 않고
// 오류가 발생했으면 결과 값을 nil로 돌려받을 수 있다
// 정상적인 동작 후에는 옵셔널 타입으로 정상값을 돌려받는다.

results = try? machine.vend(numberOfItems: 2)
results //Optional("2개 성공함")
results = try? machine.vend(numberOfItems: 2)
results //nil

// try!
// 오류가 발생하지 않을 것이라는 강력한 확신을 가지떄
// try!를 사용하면 정상동작 후에 바로 결과 값을 돌려받습니다
// 오류가 발생하면 런타임 오류가 발생하여
// 에클리케이션 동작이 중지됩니다.

results = try! machine.vend(numberOfItems: 1)
results //1개 제공함

//results = try! machine.vend(numberOfItems: 1)


/* 고차 함수 */
// 전달인자로 함수를 전달받거나
// 함수실행의 결과를 함수로 반환하는 함수

// map, filter, reduce

//MARK: map
// 컨테이너 내부의 기존 데이터를 변형(transform)하여 새로운 컨테이너 생성

let numbers: [Int] = [0, 1, 2, 3, 4]
var doubledNumbers: [Int]
var stringValues: [String]

// MARK: for 구문 사용
doubledNumbers = [Int]()
stringValues = [String]()

for number in numbers {
  doubledNumbers.append(number * 2)
  stringValues.append("\(number)")
}

print(doubledNumbers)
print(stringValues)

// MARK: map 메서드 사용
// number의 각 요소를 2배하여 새로운 배열 반환
doubledNumbers = numbers.map({ (number: Int) -> Int in
  return number * 2
})

// numbers의 각 요소를 문자열로 변환하여 새로운 배열 반환
stringValues = numbers.map({ (number: Int) -> String in
  return "\(number)"
})

print(doubledNumbers)
print(stringValues)

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
doubledNumbers = numbers.map { $0 * 2 }
print(doubledNumbers)

// MARK: filter
// 컨테이너 내부의 값을 걸러서 새로운 컨테이너로 추출

// MARK: for 구문 사용
// 변수의 사용에 주목하세요
var filtered: [Int] = [Int]()

for number in numbers {
  if number % 2 == 0 {
    filtered.append(number)
  }
}

print(filtered) // [0, 2, 4]

// MARK: filter 메서드 사용
// numbers의 요소 중 짝수를 걸러내어 새로운 ㅐㅂ열로 반환
let evenNumbers: [Int] = numbers.filter {
  (number: Int) -> Bool in
  
  return number % 2 == 0
}

print(evenNumbers)

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
let oddNumbers: [Int] = numbers.filter {
  $0 % 2 != 0
}

print(oddNumbers) // [1, 3]

// MARK: reduce
// 컨테이너 내부의 콘텐츠를 하나로 통합
let someNumbers: [Int] = [2, 8, 15]

// MARK: for 구문 사용
// 변수 사용에 주목하세요
var resultss: Int = 0

// someNumbers의 모든 요소를 더합니다.
for number in someNumbers {
  resultss += number
}

print(result) //25

// MAKR: reduce 메서드 사용
// 초기값이 0이고, someNumbers 내부의 모든 값을 더합니다.
let sumValues: Int = someNumbers.reduce(0, {
  (first: Int, second: Int) -> Int in
  return first + second
})

print(sumValues) // 25

//초기 값이 0이고, someNumbers내부의 모든 값을 뻅니다.
let subtracts: Int = someNumbers.reduce(0, {
  (first: Int, second: Int) -> Int in
  return first - second
})

print(subtracts) // -25

//초기값이 3이고, someNumbers내부의 모든 값을 더합니다.
let sumFromThree = someNumbers.reduce(3) { $0 + $1 }
print(sumFromThree) //28

print(someNumbers.reduce(1) {$0 * $1} )


