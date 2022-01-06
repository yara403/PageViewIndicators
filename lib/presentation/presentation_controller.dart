import 'package:mobx/mobx.dart';

part 'presentation_controller.g.dart';

class PresentationController = _PresentationControllerBase
    with _$PresentationController;

abstract class _PresentationControllerBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  void setSelectedIndex(int index) {
    selectedIndex = index;
  }
}
