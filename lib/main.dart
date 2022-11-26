import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:preg/src/authenticationSection/providers/auth_provider.dart';
import 'package:preg/src/authenticationSection/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'common/helperFunctions/navigatorHelper.dart';
import 'common/utils/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'pregwithfaith',
          navigatorKey: navstate,
          theme: AppTheme.themeData,
          routes: {
            SplashScreen.routeName: (context) => SplashScreen(),
          },
          home: SplashScreen()),
    );
  }
}
