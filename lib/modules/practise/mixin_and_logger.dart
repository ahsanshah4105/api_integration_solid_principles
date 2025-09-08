

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