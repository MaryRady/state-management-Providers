import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:selector/provider_of.dart';

/// Note in el provider.of => bt3ml
/// rebuild lly widget kolha 1
class WidgetChild extends StatelessWidget {
  const WidgetChild({super.key});

  @override
  // listen: false
  // => mswal 3la 3dm el rebuild but
  // e2der access el data
  Widget build(BuildContext context) {
    var model = Provider.of<Modell>(
      // listen: false => kda hwa msh he3ml Rebuild lly Ui *
      context,
   listen: false );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            /** 
             * context.read<Modell>().name => m3a listen: false-
             *        not Rebuild
             *  context.read<Modell>().name => without listen: false-
             *         Rebuild 
             * ----------------
             * context.watch<Modell>().name =>m3a and without  listen: false
             * bt3ml 
             *      Rebuild
             */

            context.watch<Modell>().name,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all((Colors.teal))),
          onPressed: () {
            model.changeNamee();
          },
          child: const Text(
            "Change Name !",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
