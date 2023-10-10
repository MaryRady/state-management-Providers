import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(child: Text("Selector")),
        ),
        body: ListView(
          children: <Widget>[
            // Selector => astm3
            // <Model Name, no3 el data el f class >
            Selector<Model, int>(
                builder: (context, model, child) {
                  // aked ma3rwf leh ast5dmna el $ 
                  // ashan text ta5d string but el value aly f
                  // class intager !
                  return Text("$model");
                },
                selector: (context, provnam1) => provnam1.showname),
            //

            Selector<Model, String>(
                builder: (context, model, child) {
                  return Text(model);
                },
                selector: (context, provnam2) => provnam2.showname2),
            //
            Consumer<Model>(
              builder: (context, model, child) {
                return TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      (Colors.teal),
                    ),
                  ),
                  onPressed: () {
                    model.changeName();
                  },
                  child: const Text(
                    "Change Name One!",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            //
            Consumer<Model>(
              builder: (context, model, child) {
                return TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      (Colors.teal),
                    ),
                  ),
                  onPressed: () {
                    model.changeName2();
                  },
                  child: const Text(
                    "Change Name Two !",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
            //
          ],
        ),
      ),
    );
  }
}

/// consumer => be3ml rebuild lkol consumer f el page
/// but
/// **************
/// el selector la msh bt3ml rebuild el page kolha
/// bt3ml el gza el mh7aga et8er

class Model extends ChangeNotifier {
  int name = 1;
  String name2 = "Welcome";
  // lazm  *****
  //f el selector ast5dm el get
// m3nha return
  get showname => name;
  get showname2 => name2;

  changeName() {
    name++;
    notifyListeners();
  }

  changeName2() {
    name2 = "meri";
    notifyListeners();
  }
}
// selector bt3ml rebuild 
//lly text bs w kman beshowf 
//lw mmken tt8er tany wla la 
// zy fekret el conter ++