import 'package:care4sure/model/user.dart';

// ignore: camel_case_types
class signin_viewmodel {
  UserModel? usermodel;
  signin_viewmodel({this.usermodel});

  get email {
    return usermodel?.email;
  }
  get location => usermodel?.location;
  get password => usermodel?.password;
  get username => usermodel?.username;
 

}
