import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myfoodapp/screen/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myfoodapp/screen/utils.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(MyApp());
}
final messengerKey = GlobalKey<ScaffoldMessengerState>();

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aklati App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'), // English, no country code

      ],
      debugShowCheckedModeBanner: false,
        navigatorKey : navigatorKey,
        scaffoldMessengerKey: messengerKey,

        home: SplashScreen(),
    );
  }
}
