import 'package:flutter/material.dart';
import 'package:web_crud_bem_test/home_page.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BEM TEST',
      home: MyHomePage(),
    );
  }
}
