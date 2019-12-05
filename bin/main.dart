import 'package:dart_hello/dart_hello.dart' as dart_hello;

main(List<String> arguments) {
  print('Hello world: ${dart_hello.calculate()}!');
  int a1 = 2;
  int b1 = 5;
  print(a1&b1);
  showPerson(name: "Tom", age: 35);
  showPerson(age: 29, name: "Alice");
  showPerson(name: "Kate");
  int result = getResult(3, 5, (a,b)=>a+b);
  print(result);
  result = getResult(3, 5, (a,b)=>a-b);
  print(result);
  Account acc1 = Account(1857) ..sum = 4500;
  Account acc2 = Account(3453) ..sum = 5000;
  Transaction transaction = Transaction<Account>(acc1, acc2, 1900);
  transaction.execute();
}

void showPerson({String name, int age}){
  print("Name: $name");
  print("Age: $age \n");
}

int getResult(int a, int b, Function operation){

  return operation(a, b);
}

class Person{

  String name;
  Person(this.name);

  void display(){
    print("Name: $name");
  }
}
class Employee extends Person{

  String company;

  Employee(name, this.company) : super(name);

  @override
  void display(){
    print("Name: $name");
    print("Company: $company");
  }
}

class Account{

  int id;
  int sum;
  Account(this.id) {

    sum = 0;
  }
}


class Transaction<T extends Account>{

  T fromAccount;
  T toAccount;
  int sum;
  Transaction(this.fromAccount, this.toAccount, this.sum);
  void execute(){

    if (fromAccount.sum > sum){
      fromAccount.sum -= sum;
      toAccount.sum += sum;
      print("Счет ${fromAccount.id}: ${fromAccount.sum}\$ \nСчет ${toAccount.id}: ${toAccount.sum}\$");
    }
    else
    {
      print("Недостаточно денег на счете ${fromAccount.id}");
    }
  }
}
