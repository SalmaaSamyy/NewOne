import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'radio_selected_state.dart';

class RadioSelectedCubit extends Cubit<RadioSelectedState> {
  RadioSelectedCubit() : super(RadioSelectedInitial());


   int selectedIndex =0;
  
  void radioSelected(int i){
    selectedIndex = i;
    emit(RadioSelectedInitial());
  }
}
