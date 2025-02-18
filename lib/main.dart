import 'package:anime_flutter/home_screen.dart';
import 'package:flutter/material.dart';
// import 'package:hive_flutter/adapters.dart';

const harry_box = 'harry_box';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // await Hive.openBox<List<HarryModel>>(harry_box);
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: HomeScreen(),
      ),
    ),
  );
}
