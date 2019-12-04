import 'package:dart_hello/dart_hello.dart' as dart_hello;

main(List<String> arguments) {
  print('Hello world: ${dart_hello.calculate()}!');
  int a1 = 2;
  int b1 = 5;
  print(a1&b1);
  showPerson(name: "Tom", age: 35);
  showPerson(age: 29, name: "Alice");
  showPerson(name: "Kate");
}

void showPerson({String name, int age}){
  print("Name: $name");
  print("Age: $age \n");
}
