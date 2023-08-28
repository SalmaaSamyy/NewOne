import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_selected_value_state.dart';

class ChangeSelectedValueCubit extends Cubit<ChangeSelectedValueState> {
  ChangeSelectedValueCubit() : super(ChangeSelectedValueInitial());

  int selectedIndex =0;
  
  void ChangeIndex(int index){
    selectedIndex = index;
    emit(ChangeSelectedValueInitial());
  }

}
