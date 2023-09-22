class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getSheffledAnswer() {
    //Questionのリストをコピーする
    final sheffedList = List.of(answers);
    sheffedList.shuffle();
    return sheffedList;
  }
}
