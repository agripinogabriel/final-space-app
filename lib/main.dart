import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/dependency_injection.dart';

void main() {
  configureDependencies();
  runApp(App());
}
