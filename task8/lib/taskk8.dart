// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task8/cubits/cubit/changeSelectedValue/change_selected_value_cubit.dart';
import 'package:task8/cubits/cubit/radioSelected/radio_selected_cubit.dart';
import 'package:task8/cubits/cubit/replaceUI/replace_ui_cubit.dart';
import 'package:task8/cubits/cubit/shawHidePass/show_hide_password_cubit.dart';

class Task8 extends StatelessWidget {
  Task8({super.key});

  List<String> filterList = [
    "تمت",
    "تحت المراجعة",
    "المكتملة",
    "الملغية",
    "قيد التنفيذ",
  ];
  // late AnimationController fadeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                ),
                const SizedBox(
                  height: 40,
                ),
                BlocBuilder<ChangeSelectedValueCubit, ChangeSelectedValueState>(
                  builder: (context, state) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 0; i < filterList.length; i++)
                            InkWell(
                              onTap: () {
                                context
                                    .read<ChangeSelectedValueCubit>()
                                    .changeIndex(i);
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 600),
                                margin: EdgeInsets.only(left: 16), //.all(3),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: context
                                              .read<ChangeSelectedValueCubit>()
                                              .selectedIndex ==
                                          i
                                      ? Colors.redAccent
                                      : Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: AnimatedDefaultTextStyle(
                                  duration: Duration(seconds: 2),
                                  style: context
                                              .read<ChangeSelectedValueCubit>()
                                              .selectedIndex ==
                                          i
                                      ? TextStyle(
                                          color:
                                              Color.fromARGB(255, 7, 109, 160),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        )
                                      : TextStyle(color: Colors.black87),
                                  child: Text(
                                    filterList[i],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 15,
                  ), //.all(8.0),
                  child:
                      BlocBuilder<ShowHidePasswordCubit, ShowHidePasswordState>(
                    builder: (context, state) {
                      return TextFormField(
                        obscureText:
                            context.read<ShowHidePasswordCubit>().isShown,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: context.read<ShowHidePasswordCubit>().isShown
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onPressed: () {
                              context
                                  .read<ShowHidePasswordCubit>()
                                  .shawHidePass();
                            },

                            // return Icon(Icons.visibility);
                          ),
                          hintText: "password",
                          // errorBorder: ,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 36, 4, 240),
                                width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          // border: ,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          // border:
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(
                  height: 250,
                  child: BlocBuilder<RadioSelectedCubit, RadioSelectedState>(
                    builder: (context, state) {
                      return ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, i) {
                            return RadioListTile(
                              value: i,
                              groupValue: "groupValue",
                              onChanged: (value) {
                                context.read<RadioSelectedCubit>().radioSelected(i);
                              },
                              title: Text("title"),
                              subtitle: Text("subtitle"),
                            );
                          });
                    },
                  ),
                ),

                // BlocBuilder<ReplaceUiCubit, ReplaceUiState>(
                //   builder: (context, state) {
                //     return AnimatedContainer(
                // duration: Duration(seconds: 3),
                // child:
                BlocBuilder<ReplaceUiCubit, ReplaceUiState>(
                  builder: (context, state) {
                    switch (state) {
                      case ShowText():
                        return Text(" ITI TaSk 8 ");
                      case ShowImage():
                        return SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset("images/image1.png"),
                        );
                      case ShowCircle():
                        return Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        );
                      default:
                        return Text("No button clicked");
                    }
                  },
                ),
                // );
                // },
                // ),

                // SizedBox()

                ElevatedButton(
                    onPressed: () {
                      context.read<ReplaceUiCubit>().showText();
                    },
                    child: Text("show text ")),

                ElevatedButton(
                    onPressed: () {
                      context.read<ReplaceUiCubit>().showImage();
                    },
                    child: Text("show image ")),

                ElevatedButton(
                    onPressed: () {
                      context.read<ReplaceUiCubit>().showCircle();
                    },
                    child: Text("show circle ")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
