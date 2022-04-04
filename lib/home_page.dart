import 'package:flutter/material.dart';
import 'package:flutter_theme/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
            const SizedBox(height: 10,),
            Switch(
              value: _value,
              onChanged: (value){
                setState(() {
                  _value = value;
                  if(_value){
                    MyApp.of(context)?.changeTheme(ThemeMode.dark);
                  }else{
                    MyApp.of(context)?.changeTheme(ThemeMode.light);
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
