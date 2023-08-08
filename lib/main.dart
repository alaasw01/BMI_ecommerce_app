// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iti_project/modules/bmi/cubit/bmi_cubit.dart';
import 'package:iti_project/modules/item_screen.dart';
import 'package:iti_project/modules/login_screen.dart';
import 'package:iti_project/modules/onboarding1.dart';
import 'package:iti_project/modules/popular_item_screen.dart';
import 'package:iti_project/modules/signup_screen.dart';
import 'package:iti_project/modules/splash_screen1.dart';
import 'package:hive/hive.dart';
import 'modules/bmi/bmi_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BmiCubit(),
      child: MaterialApp(
        //locale: Locale("ar"),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
       supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: BmiScreen(),
      ),
    );
  }
}
