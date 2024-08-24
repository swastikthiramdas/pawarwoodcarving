import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Backend/scroll_offset.dart';
import 'screens/responsive/resposive_home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: 'AIzaSyBOiZJv0XTss-0UritJrpOqNx9M9I_Fq4M',
    appId: '1:205615941880:web:230811c7fdc887e2d2d30d',
    messagingSenderId: '205615941880',
    projectId: 'pawar-wood-carving',
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateRoute: MyRoutes.generateRoute,
      // initialRoute: homepage,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => DisplayOffset(Scrolloffset(scrollOffsetValue: 0)),
        child: const ResponsiveHomeScreen(),
      ),
    );
  }
}
