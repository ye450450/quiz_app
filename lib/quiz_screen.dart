import 'package:flutter/material.dart';
import 'quiz_question.dart';

class quiz extends StatelessWidget {
  const quiz({Key? key, required this.count_add, required this.count_question }) : super(key : key);
  final Function count_add;
  final int count_question;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Text(queistion[count_question]["questionText"], style: TextStyle(fontSize: 25, color: Colors.grey),),
        const SizedBox(height: 150),
        ElevatedButton(onPressed: ()  => count_add(), child: queistion[count_question]["answers"][0]["text"]),
        ElevatedButton(onPressed: () => count_add(), child: queistion[count_question]["answers"][1]["text"]),
        ElevatedButton(onPressed: () => count_add(), child: queistion[count_question]["answers"][2]["text"]),
        ElevatedButton(onPressed: () => count_add(), child: queistion[count_question]["answers"][3]["text"]),
      ],
    );
  }
}