import 'package:country/injection.dart';
import 'package:country/ui/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  configureDependencies();
  runApp(const MainApp());
}
