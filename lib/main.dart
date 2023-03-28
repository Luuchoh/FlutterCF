import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hello_world/Common/MyKeys.dart';
import 'package:hello_world/Common/MyRoutes.dart';
import 'package:hello_world/Pages/LoginPage.dart';
import 'package:hello_world/Values/ColorsApp.dart';
import 'package:hello_world/Values/ThemeApp.dart';
import 'package:sizer/sizer.dart';

import 'Pages/MyHomePage.dart';
import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  MyApp():super(key: myAppKey);

  @override
  State<StatefulWidget> createState() => MyAppState();
  // This widget is the root of your application.

}
class MyAppState extends State<MyApp> {

  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              S.delegate
            ],
            supportedLocales: S.delegate.supportedLocales,
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            initialRoute: ROUTE_PLAY_LIST,
            onGenerateRoute: MyRoutes.generateRoute,
            themeMode: themeMode,
            darkTheme: ThemeData(
              scaffoldBackgroundColor: backgroundDark,
              textTheme: textThemeDark,
              primaryIconTheme: iconThemeData1,
              accentIconTheme: iconThemeDark,
              primarySwatch: Colors.blue,
            ),
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              scaffoldBackgroundColor: background,
              textTheme: textTheme,
              primaryIconTheme: iconThemeData1,
              accentIconTheme: iconThemeData2,
              primarySwatch: Colors.blue,
            ),
            home: LoginPage(),
          );
      }
    );
  }

  changeTheme (ThemeMode themeMode) {
    setState(() {
      this.themeMode = themeMode;
    });
  }
}




