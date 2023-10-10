import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MulitiProvider extends StatelessWidget {
  const MulitiProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title:
              const Center(child: Text('ChangeNotifierProvider And Consumer')),
        ),
        body: MultiProvider(
            providers: [
              // here => mmkwn astd3e akter mn ChangeNotifierProvider
              // note ****
              ChangeNotifierProvider(
                create: (context) {
                  return Model();
                },
              ),
              ChangeNotifierProvider(
                create: (context) {
                  return ProveOne();
                },
              ),
            ],
            child: Column(
              children: <Widget>[
                Consumer<Model>(builder: (context, model, child) {
                  return Center(
                    child: Text(
                      model.name,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  );
                }),
                const SizedBox(
                  height: 15,
                ),
                Consumer<ProveOne>(builder: (context, proveone, child) {
                  return Center(
                    child: Text(
                      proveone.name,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  );
                }),
                const SizedBox(
                  height: 15,
                ),
                // Consumer<Model>(builder: (context, model, child) {
                //   return Center(
                //     child: TextButton(
                //       style: ButtonStyle(
                //           backgroundColor:
                //               MaterialStateProperty.all((Colors.teal))),
                //       onPressed: () {
                //         model.changeName();
                //       },
                //       child: const Text(
                //         "Change Name !",
                //         style: TextStyle(
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   );
                // }),
                // const SizedBox(
                //   height: 15,
                // ),
                //***********
                Consumer<ProveOne>(builder: (context, proveone, child) {
                  return Center(
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all((Colors.teal))),
                      onPressed: () {
                        proveone.changeProveOne();
                      },
                      child: const Text(
                        "Change Name !",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }),
                const SizedBox(
                  height: 15,
                ),
                Consumer<Model>(builder: (context, model, child) {
                  return Center(
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all((Colors.teal))),
                      onPressed: () {
                        model.changeName2();
                      },
                      child: const Text(
                        "Change Name2 !",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }),
              ],
            )));
  }
}

class Model extends ChangeNotifier {
  String name = "Welcome";
  changeName() {
    name = "Mary";
    notifyListeners();
  }

  changeName2() {
    name = "Meri";
    notifyListeners();
  }
}

class ProveOne extends ChangeNotifier {
  String name = "how are U ";
  changeProveOne() {
    name = "im fine";
    notifyListeners();
  }
}
