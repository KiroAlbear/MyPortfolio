import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/UI/main_page/main_page.dart';
import 'package:portfolio/config/dimensions/app_dimensions.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await Future.delayed(const Duration(milliseconds: 1000));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppDimensions.designSize,
      child: MaterialApp(
        builder: (context, child) =>
            ResponsiveBreakpoints.builder(breakpoints: [
          const Breakpoint(start: 0, end: 600, name: MOBILE),
          const Breakpoint(start: 601, end: 1000, name: TABLET),
          // const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          // const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ], child: child!),
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MainPage(),
      ),
    );
  }
}
