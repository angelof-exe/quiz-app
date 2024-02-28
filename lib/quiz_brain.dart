import 'package:quiz_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = <Question>[
    Question('I cammelli immagazzinano acqua nelle loro gobbe', false),
    Question(
        'Nello spazio fra la Terra e la Luna potrebbero entrare tutti i pianeti del Sistema Solare',
        true),
    Question('L’isola del Madacascar è più grande dell’Italia', true),
    Question(
        'Samantha Cristoforetti è tornata dalla stazione spaziale più giovane rispetto a chi era rimasto sulla Terra',
        true),
    Question('Le farfalle sono animali a sangue freddo', true),
    Question(
        'Un bicchiere di vino al giorno può far bene al cuore e al sistema cardiocircolatorio',
        false),
    Question(
        'Gli eschimesi fanno dei peti per dimostrare al cuoco che il pasto è stato gradito',
        true),
    Question('La grande Muraglia Cinese può essere vista dallo spazio', false),

    //TODO: Aggiungere altre domande
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  int getLength() {
    return _questionBank.length;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
