import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _isAnonymousUser = false;
  bool get isAnonymousUser => _isAnonymousUser;
  set isAnonymousUser(bool value) {
    _isAnonymousUser = value;
  }
}
