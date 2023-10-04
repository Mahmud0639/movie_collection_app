import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app_list_05/pages/category_page.dart';
import 'package:movie_app_list_05/pages/home_page.dart';
import 'package:movie_app_list_05/pages/move_page.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//to hide status bar and below button
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D)
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>HomePage(),
        "categoryPage":(context)=>CategoryPage(),
        "moviePage":(context)=>MoviePage()
      },
    );
  }
}