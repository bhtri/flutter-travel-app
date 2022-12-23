import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:hive/hive.dart';

class LocalStorageHelper {
  static final LocalStorageHelper _instance = LocalStorageHelper._internal();
  LocalStorageHelper._internal();
  factory LocalStorageHelper() {
    return _instance;
  }

  Box<dynamic>? hiveBox;

  static initLocalStorageHelper() async {
    // https://stackoverflow.com/a/57965689
    String? path;
    if (!kIsWeb) {
      path = Directory.current.path;
    }
    Hive.init(path);
    _instance.hiveBox = await Hive.openBox('TravelApp');
  }

  static dynamic getValue(String key) {
    return _instance.hiveBox?.get(key);
  }

  static void setValue(String key, dynamic value) {
    _instance.hiveBox?.put(key, value);
  }
}
