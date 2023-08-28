import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'replace_ui_state.dart';

class ReplaceUiCubit extends Cubit<ReplaceUiState> {
  ReplaceUiCubit() : super(ReplaceUiInitial());

   void showText(){
    emit(ShowText());
  }

  void showImage(){
    emit(ShowImage());
  }

  void showCircle(){
    emit(ShowCircle());
  }
}
