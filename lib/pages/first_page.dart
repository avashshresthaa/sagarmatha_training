import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'MY First Page',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'GO Back',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class myContainer extends StatelessWidget {
//   final String nameText;
//   final String secondText;
//   final Color color;

//   myContainer(
//     this.nameText,
//     this.secondText,
//     this.color,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       height: 200,
//       decoration: BoxDecoration(
//         color: color,
//       ),
//       child: Column(
//         children: [
//           Text(
//             nameText,
//             style: TextStyle(
//               fontSize: 30,
//             ),
//           ),
//           Text(
//             secondText,
//             style: TextStyle(
//               fontSize: 30,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
