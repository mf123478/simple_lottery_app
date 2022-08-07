import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lottery App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: Text("Lucky Number is 4")),
            const SizedBox(height: 10,),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: x == 4 ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                   Icon(Icons.check_circle_rounded,color: Colors.green,size: 40,),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Congratulations you have won a lottery",textAlign: TextAlign.center,),
                  ),
                ],
              ):Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error,color: Colors.red,size: 40,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Better luck next time your number is $x \nTry Again",textAlign: TextAlign.center,),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              x = random.nextInt(10);
            });
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}






