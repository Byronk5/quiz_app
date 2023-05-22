class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // !List is both a class with methods and also a type
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
