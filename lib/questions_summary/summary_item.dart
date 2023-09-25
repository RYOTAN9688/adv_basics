import 'package:adv_basics/questions_summary/questions.identifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrentAnswer =
        itemData['user_answer'] == itemData['currect_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionsIdentifier(
          questionsIndex: itemData['question_index'] as int,
          isCorrectAnswer: isCorrentAnswer,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                (itemData['question'] as String),
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                (itemData['user_answer'] as String),
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 255, 90, 90)),
              ),
              Text((itemData['currect_answer'] as String),
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 137, 168, 255),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
