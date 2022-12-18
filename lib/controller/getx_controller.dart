import 'package:get/get.dart';

class Controller extends GetxController {
  final contador = 0.obs;

  void incrementar() {
    contador.value++;
  }

  void restar() {
    contador.value--;
  }

  void resetear() {
    contador.value = 0;
  }
}
