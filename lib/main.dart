import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/screens/home.dart';
import 'package:instagram_clone/screens/profile.dart';
import 'package:instagram_clone/widgets/bottom_navigation.dart';
import 'package:instagram_clone/widgets/story_widget.dart';

import 'Utills/contant_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI',
      initialRoute: '/',
      routes: {
        '/' : (context) => const MyHomePage(title: 'Instagram'),
        'profile' : (context) => ProfileHome()
      },
      onGenerateRoute: (r){
        debugPrint('routes---> ${r.name}');
      } ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
          elevation: 5,
          backgroundColor: Colors.white,
          shadowColor: Colors.black12,
          title: SizedBox(
              height: 35, child: Image.asset('assets/images/insta_logo.png')),
          actions: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.add_box_outlined, color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, top: 16, bottom: 16),
              child: Icon(Icons.sms_outlined, color: Colors.black),
            )
          ],
        ),
        body: HomeScreen(),
      bottomNavigationBar: BottomNavigationUI(currentScreen: BottomNavigationRoutes.home,),
    );
  }
}
