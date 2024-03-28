import 'package:flutter/material.dart';
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
          elevation: 10,
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title,
      style: const TextStyle(
        color: Colors.white,
      ),
      ),
      centerTitle: true,
      
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            elevation: 10,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width / 1.5,
              child: Image.asset("assets/camavinga.jpg", 
              fit: BoxFit.cover,
              ),

            ),
          ),
          const SizedBox(height: 90,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue
            ),
            onPressed: (){

          }, child: const Text("Commencer le quizz",
          textScaleFactor: 2,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic
          ),
          )
          )
        ],
      ),
    ),
    );
  }
}
