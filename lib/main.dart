import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_qr_reader/providers/ui_provider.dart';
import 'package:app_qr_reader/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color themeColor = Colors.deepPurple;

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: ( _ ) => UiProvider())
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'QR Reader',
            initialRoute: 'home',
            routes: getApplicationRoutes(),
            theme: ThemeData(
                primaryColor: themeColor,
                floatingActionButtonTheme: const FloatingActionButtonThemeData(
                    backgroundColor: themeColor
                )
            )
        )
    );
  }
}
