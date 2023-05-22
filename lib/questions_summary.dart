import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: data['user_answer'] == data['correct_answer']
                              ? const Color.fromARGB(255, 54, 206, 244)
                              : const Color.fromARGB(255, 237, 111, 223),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    // !Expanded restricts it's child from taking up an infinite amount of width. The child will now take up the width of it's parent. In this case the row that the column is nested in. The parent row's max width is the screen width by default.
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.lato(
                                color: Colors.white, fontSize: 17),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            data['user_answer'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 210, 105, 224),
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 92, 152, 215),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
