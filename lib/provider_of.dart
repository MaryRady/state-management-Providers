import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:selector/widgetChaild.dart';

class ProviderOf extends StatelessWidget {
  const ProviderOf({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      /**
       * chaild gza el ui 
       * =>
       * Model => dh class mn no3 el changeNotofiar 
       */
      create: (context) => Modell(), // creat function mn nw3 el context !
      child: Scaffold(
        // chaild bea5d  **
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title:
              const Center(child: Text('Provider_Of(Context)')),
        ),
        // ignore: prefer_const_constructors
        body:   WidgetChild()
      ),
      );
        } 
   
  }
 

class Modell extends ChangeNotifier {
  String name = "Welcome";
  changeNamee() {
    name = "Mary";
    notifyListeners();
  }
}
