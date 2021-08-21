import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

enum Status { Unintialize, Authenticated, Authenticating, Failed }

class SigninProvider with ChangeNotifier {
  Map? userData;
  Status _status = Status.Unintialize;

  Status get status => _status;

  Future<dynamic> login() async {

    var result =
        await FacebookAuth.i.login(permissions: ["public_profile", "email"]);
    if (result.status == LoginStatus.success) {
      final requestData =
          await FacebookAuth.i.getUserData(fields: "email,name,picture");

      userData = requestData;

      notifyListeners();

      _status = Status.Authenticated;
    } else {
      _status = Status.Failed;
    }
    return userData;
  }

  logOut() async {
    await FacebookAuth.i.logOut();
    userData = null;
    notifyListeners();
  }
}
