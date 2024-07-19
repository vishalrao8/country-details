import 'package:country/injection.dart';
import 'package:country/ui/app/app.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(const MainApp());
}
