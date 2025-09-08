import 'dart:ffi';
//
// extension CapitalizeExtension on String {
//   String capitalizeFirst() {
//     if (isEmpty) return this;
//     return this[0].toUpperCase() + substring(1);
//   }
// }
//
// extension ToDouble on int{
//   int inToDouble() {
//     return this * 2;
//   }
// }
// void main() {
//   String name = "ahsan";
//   print(name.capitalizeFirst());
//
//   int num = 10;
//   print(num.inToDouble());
// }


// mixin Logger {
//   void log(String message) => print("[LOG]: $message");
// }
//
// mixin Validator {
//   bool isValid(String value) => value.isNotEmpty;
// }
//
// class UserService with Logger, Validator {
//   void createUser(String name) {
//     if (isValid(name)) {
//       log("User $name created");
//     } else {
//       log("Invalid name");
//     }
//   }
// }
//
// void main() {
//   UserService userService = UserService();
//   userService.createUser("");
// }



mixin Logger {
  void log(String message) {
    print("[Log]: $message");
  }
}

mixin Validator {
  bool isValid(String value) {
    return value.trim().isNotEmpty;
  }
}



class ServiceClass with Logger, Validator {
  void createUser(String name) {
    if(isValid(name)){
      log("User $name created");
    }else{
      log("Invalid User");
    }
  }
}

void main() {
  String name = "Ehsan Ali Shah";
  ServiceClass _serviceClass = ServiceClass();
  _serviceClass.createUser(name);
}