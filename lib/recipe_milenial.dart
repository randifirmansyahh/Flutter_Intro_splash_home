import 'package:flutter/material.dart';
import 'package:seminar_meet/common/configs.dart';
import 'package:seminar_meet/common/constans.dart';
import 'package:seminar_meet/common/styles.dart';
import 'package:seminar_meet/page/splash_page.dart';

class ResepMilenial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kSAppName,
      theme: tdMain(context),
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: kLDelegates,
      supportedLocales: kLSupports,
    );
  }
}
