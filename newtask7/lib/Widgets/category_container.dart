import 'package:flutter/material.dart';
import 'package:newtask7/Global/quizz_data.dart';
import 'package:newtask7/screens/quiz_screen.dart';


// import 'package:google_fonts/google_fonts.dart';
class CategoryContainer extends StatelessWidget {
  final int index;
  CategoryContainer({
    super.key,
    required this.index,
  });
  final List quizName = [
    "Sport Test",
    "History Test",
    "General Test",
    'Harry Potter Test',
    'sciences Test',
    'Maths Test'
  ];
  final List quizColor = [
    Colors.blue,
    const Color(0xffff1201),
    const Color.fromARGB(255, 1, 255, 18),
    const Color(0xff916f64),
    const Color(0xffff6e3a),
    const Color(0xffff669a),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuizScreen(
                category_container: dataBase[index],
                // quizzColor: quizColor[index],
                // quizzName: quizName[index],
                // // quizzList: [dataList[index]],
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              quizName[index],
              style: const TextStyle(
                fontFamily: 'Bradley Hand ITC',
                fontSize: 37,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              //
              // // GoogleFonts.actor(
              //     fontSize: 35, color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ),
      ),
    );
  }
}
