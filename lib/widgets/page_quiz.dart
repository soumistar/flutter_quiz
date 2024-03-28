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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Question n° ${index + 1}",
                style: TextStyle(color: Colors.grey[900])),
            Text("Score: $score / $index",
                style: TextStyle(color: Colors.grey[900])),
            Card(
              elevation: 10,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.75,
                width: MediaQuery.of(context).size.width * 0.75,
                child: Image.asset(
                  "assets/${question.imagePath}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              question.question,
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 20
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                boutonBool(true),
                boutonBool(false)
              ],
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton boutonBool(bool b) {
    return  ElevatedButton(
      onPressed: (() => dialogue(b)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue
      ),
      child: Text((b) ? "Vrai":"Faux",
       style: const TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
      ),
    );
  }

  Future<Null>dialogue(bool b) async {

  }
}
