import 'question.dart';

class QuizBrain{
  int _questionNo = 0;

  List<Questions1> _questionBank=[
    Questions1(q: 'Some cats are actually allergic to humans',a: true),
    Questions1(q: 'You can lead a cow down stairs but not up stairs.',a: false),
    Questions1(q: 'Approximately one quarter of human bones are in the feet.', a:true),
    Questions1(q: 'A slug\'s blood is green.', a:true),
    Questions1(q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',a: true),
    Questions1(q: 'It is illegal to pee in the Ocean in Portugal.',a: true),
    Questions1(q:
        'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Questions1(q:
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    Questions1(q:
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Questions1(q:
        'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Questions1(q: 'Google was originally called \"Backrub\".', a:true),
    Questions1(q:
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    Questions1(q:
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),

  ];

  void nextQuestion(){
    if(_questionNo<_questionBank.length-1)
      {
        _questionNo++;
      }
  }

  String getQuestionText(){
    return _questionBank[_questionNo].questionText;
  }

  bool getCorrectAnswer(){
    return _questionBank[_questionNo].questionAnswer;
  }

  bool isFinished() {
    if (_questionNo >= _questionBank.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNo = 0;
  }

}