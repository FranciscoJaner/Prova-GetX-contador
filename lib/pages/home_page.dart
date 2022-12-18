import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/getx_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Controller"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<Controller>(
              init: Controller(),
              builder: ((controller) => Text(
                    controller.contador.string,
                    style: const TextStyle(fontSize: 30),
                  )),
            )
          ],
        ),
      ),
      floatingActionButton: Wrap(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              child: Icon(Icons.restart_alt_rounded),
              onPressed: () {
                c.incrementar();
                Get.snackbar('Aviso', 'Contador reseteado');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                c.restar();
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                c.resetear();
              },
            ),
          )
        ],
      ),
    );
  }
}
