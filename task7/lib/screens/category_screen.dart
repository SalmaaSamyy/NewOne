import 'package:flutter/material.dart';
import 'package:taskk3/Global/quizz_data.dart';
import '../Widgets/category_container.dart';
// import 'package:taskk3/screens/quiz_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < dataBase.length; i++)
            CategoryContainer(
              index: i,
            )
        ],
      ),
    );
  }
}

// ) categorycontainer
//     Expanded(
//   // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
//   child: Container(
//     child: Center(
//       child: Text(quizName[index!]),
//     ),
//     decoration: BoxDecoration(
//         color: quizColor[index!],
//         border: Border.all(width: 1, color: Colors.black)),
//   ),
// );
