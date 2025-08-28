//
// abstract class Database{
//   void save(String data);
// }
// class SQLDB implements Database{
//   @override
//   void save(String data) {
//     print('Saving $data to Sqlite');
//   }
// }
//
// class MongoDB implements Database{
//   @override
//   void save(String data) {
//     print('Saving $data to mongo');
//   }
// }
// class UserRepository {
//   final Database database;
//
//   UserRepository(this.database);
//
//   void save(String name) {
//     database.save(name);
//   }
// }
// void main() {
//   UserRepository userRepository = UserRepository(SQLDB());
//   userRepository.save('Ahsan Ali Shah');
//
//   UserRepository userRepository1 = UserRepository(MongoDB());
//   userRepository1.save('Ali Shah');
// }

///Example no 1 is solved above
///Service Interface
abstract class Notifier{
  void notify(String data);
}

class EmailNotifier implements Notifier {
  @override
  void notify(String data) {
    print('Notify by email to $data');
  }
  
}

class SmsNotifier implements Notifier{
  @override
  void notify(String data) {
    print('Notify by sms to $data');
  }
}

class NotifierRepository{
  final Notifier notifier;
  NotifierRepository(this.notifier);
  void notify(String data) {
    notifier.notify(data);
  }
}

class Controller{
  void showsms( ){
    NotifierRepository notifierRepository = NotifierRepository(SmsNotifier());

    notifierRepository.notifier;
  }

  void showEmail( ){
    NotifierRepository notifierRepository2 = NotifierRepository(EmailNotifier());
    notifierRepository2.notify('Ali');
  }

}

void main() {
  Controller controller = Controller();
  controller.showEmail();
  controller.showsms();
}