import "package:flutter/material.dart";

class PageQuizz extends StatefulWidget {
  const PageQuizz({super.key});

  @override
  State<PageQuizz> createState() => _PageQuizzState();
}

class _PageQuizzState extends State<PageQuizz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blue,
        title: const Text('Le Quizz',
         style:  TextStyle(
            color: Colors.white,),
      ),
      centerTitle: true,
      ),
      body: Center(),
    );
  }
}