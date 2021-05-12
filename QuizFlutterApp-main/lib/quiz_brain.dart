import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'int x[] = new int[]{10,20,30};<br><br>Arrays can also be created and initialize as in above statement',
        true),
    Question(
        'In an instance method or a constructor, "this" is a reference to the current object.',
        true),
    Question('Garbage Collection is manual process.', false),
    Question(
        'The JRE deletes objects when it determines that they are no longer being used. This process is called Garbage Collection.',
        true),
    Question('Constructor overloading is not possible in Java.', false),
    Question('Assignment operator is evaluated Left to Right.', false),
    Question(
        'All binary operators except for the assignment operators are evaluated from Left to Right',
        true),
    Question(
        'Java programming is not statically-typed, means all variables should not first be declared before they can be used.',
        false),
    Question(
        'In Java SE 7 and later, underscore characters "_" can appear anywhere between digits in a numerical literal',
        true),
    Question('Variable name can begin with a letter, "\$", or "_".', true),
    Question('Interfaces can be instantiated.', false),
    Question(
        'The modifiers public and static cannot written in either order "public static" or "static public".',
        false),
    Question('A .class file contains bytecodes?', true),
    Question('James Gosling is father of Java?', true),
    Question(
        'Java technology is both a programming language and a platform?', true),
    Question(
        'Abstraction, Encapsulation, Inheritance, Polymorphism are the pillars of OOPS',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      print('true');
      return true;
    } else {
      print('false');
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
