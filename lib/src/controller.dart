// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

/// The set of actions that a controller can accept
enum WizardControllerAction {
  home,
  back,
  next,
  replace,
  done,
  unknown,
}

/// Allows widgets such as the AppBar to invoke functionality on the Wizard
/// This is useful for widgets that are defined above the Wizard, such as a mobile
/// app's AppBar.
class WizardController extends ChangeNotifier {
  WizardControllerAction action = WizardControllerAction.unknown;
  Object? arguments;

  void home() {
    action = WizardControllerAction.home;
    notifyListeners();
  }

  void done({Object? result}) {
    action = WizardControllerAction.done;
    this.arguments = result;
    notifyListeners();
  }

  void replace({Object? arguments}) {
    action = WizardControllerAction.replace;
    this.arguments = arguments;
    notifyListeners();
  }

  void next({Object? arguments}) {
    action = WizardControllerAction.next;
    this.arguments = arguments;
    notifyListeners();
  }

  void back({Object? arguments}) {
    action = WizardControllerAction.back;
    this.arguments = arguments;
    notifyListeners();
  }
}
