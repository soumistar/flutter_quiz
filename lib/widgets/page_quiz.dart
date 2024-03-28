import "package:flutter/material.dart";
import "package:flutter_quiz/model/question.dart";

class PageQuizz extends StatefulWidget {
  const PageQuizz({super.key});

  @override
  State<PageQuizz> createState() => _PageQuizzState();
}

class _PageQuizzState extends State<PageQuizz> {
  late Question question;
  List<Question> listeQuestions = [
    Question("Lionnel a eu 8 ballon d'or", true, "", "messi.jpg"),
    Question("Kylliane M'pabpée a déja gagné un ULC", false,
        "Ligues des champions", "mbappe.jpg"),
    Question("Cristiani Ronaldo a déja gagné un WC", false, "Coupe du monde",
        "cristiano.jpg"),
    Question("Eduardo Camavinga a t-il joués dans un final de WC", true,
        "Final de la Coupe du monde", "camavinga.jpg"),
  ];

  int index = 0;
  int score = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    question = listeQuestions[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blue,
        title: const Text(
          'Le Quizz',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(),
    );
  }
}
