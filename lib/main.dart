import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_) =>  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  LoginPage(),
      ),
      designSize: const Size(896,414),
    );
  }
}
