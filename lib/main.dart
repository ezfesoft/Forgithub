import 'package:flutter/material.dart';
import 'package:proje3/my_flutter_app_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaEkran(),
    );
  }
}
class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/resimler/images1.png"),
    fit: BoxFit.cover,
    ),
    ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10 ,left: 35,right: 35),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "E-mail"
                        ),
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.only(bottom:60 ,left: 35,right: 35),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",suffixIcon: const Icon(MyFlutterApp.eye_slash)
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
    );
  }
}

