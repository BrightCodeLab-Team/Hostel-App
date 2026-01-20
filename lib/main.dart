import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/core/constants/colors.dart';
import 'package:flutter_basic/ui/screens/another_home/auth_flow/login_screen.dart';
import 'package:flutter_basic/ui/screens/another_home/auth_flow/on_boarding_screen.dart';
import 'package:flutter_basic/ui/screens/another_home/auth_flow/otp_screen.dart';
import 'package:flutter_basic/ui/screens/another_home/auth_flow/splash_scrren.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.sizeOf(context).width,
        MediaQuery.sizeOf(context).height,
      ),
      builder: (context, child) {j
        return GetMaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: ThemeData(
            scaffoldBackgroundColor: whiteColor,
            bottomSheetTheme: BottomSheetThemeData(
              surfaceTintColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              modalBackgroundColor: Colors.transparent,
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: whiteColor,
              surfaceTintColor: whiteColor,
              elevation: 0.0,
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      },
    );
  }
}
