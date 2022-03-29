import '../base/base_service.dart';
import 'package:flutter/material.dart';

class MessengerService extends BaseServiceModel {
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  showSnackbar<T>(SnackBar snackBar) {
    log!.i('showing snackbar');
    var snack = SnackBar(
      content: snackBar.content,
      backgroundColor: snackBar.backgroundColor,
      duration: Duration(seconds: 2, milliseconds: 800),
      elevation: 20,
      dismissDirection: DismissDirection.up,
    );
    return messengerKey.currentState!.showSnackBar(snack);
  }

  hideSnackbar<T>() {
    log!.i('hidding snackbar');
    return messengerKey.currentState!.hideCurrentSnackBar();
  }
}
