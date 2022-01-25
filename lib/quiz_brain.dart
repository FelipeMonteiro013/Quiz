import 'package:quizzler/question.dart';

class QuizBrain {
  int _quastionNumber = 0;

  List<Quenstion> _questions = [
    Quenstion('A gestação dos cavalos-marinhos é feita pelos machos.', true),
    Quenstion(
        'Por causa do tamanho, as girafas ficam o tempo todo em pé e só se deitam quando vão dar à luz.',
        false),
    Quenstion(
        'Os ornitorrincos são os únicos mamíferos venenosos que se tem notícia.',
        false),
    Quenstion(
        'Os louva-a-deus são capazes de capturar aranhas, lagartos e até ratos.',
        true),
    Quenstion(
        'Apesar de serem os mais famosos, os morcegos não são os únicos mamíferos capazes de voar.',
        false),
    Quenstion(
        'Existe uma espécie de pássaro que fica voando por até dez meses sem parar.',
        true),
    Quenstion(
        'Algumas arraias conseguem dar saltos de até três metros de altura.',
        true),
    Quenstion(
        'Os golfinhos usam as toxinas liberadas pelos baiacus para ficarem doidões.',
        true),
    Quenstion(
        'A água da privada gira em sentidos diferentes no hemisfério norte e no hemisfério sul.',
        false),
    Quenstion('O Sol não é amarelo.', true),
    Quenstion(
        'Voar em um avião é estatisticamente mais seguro do que dirigir um carro',
        true),
  ];

  void getNextQuestion() {
    if (_quastionNumber < _questions.length - 1) {
      _quastionNumber++;
    }
  }

  getQuestionText() {
    return _questions[_quastionNumber].questionText;
  }

  getQuestionAnswer() {
    return _questions[_quastionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_quastionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _quastionNumber = 0;
  }
}
