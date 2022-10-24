import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:wecan/view/home/home.dart';
import 'package:wecan/view/screen_two.dart';

import 'controller/mybinding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 1090),
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          locale: Locale('ar'),
          getPages: [
            GetPage(name: '/', page: () => Home()),
            GetPage(
                name: '/dreamScreen',
                page: () => const ScreenTwo(),
               ),
          ],
        );
      },
    );
  }
}
