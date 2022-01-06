import 'package:pageview_with_indicators/presentation/widget/slide_widget.dart';

class Presentation {
  static List<String> imgs = [
    'assets/images/01_undraw_Programmer.png',
    'assets/images/02_undraw_predictive_analytics.png',
    'assets/images/03_undraw_Winners.png',
    'assets/images/04_undraw_Gaming.png'
  ];
  static List<String> text = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dignissim metus nibh, a dictum augue commodo at. Suspendisse erat nisi, euismod sed tellus eget, lobortis facilisis dui.',
    'A dor em si é importante para a principal elite adiposa. Ser repudiado pelo inventor e a existência dessas dores deve ser evitado. Ele o condena como se eles não o conhecessem, e como aquele a quem eles seguem; bem-vindo a grande coisa que é abençoada',
    'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.',
    'Um pequeno jabuti xereta viu dez cegonhas felizes | The quick brown fox jumps over the lazy dog: A rápida raposa marrom pula por cima do cão preguiçoso.'
  ];

  static List<SlideWidget> slides = [
    SlideWidget(
      imagePath: imgs[0],
      contentText: text[0],
    ),
    SlideWidget(
      imagePath: imgs[1],
      contentText: text[1],
    ),
    SlideWidget(
      imagePath: imgs[2],
      contentText: text[2],
    ),
    SlideWidget(
      imagePath: imgs[3],
      contentText: text[3],
    ),
  ];
}
