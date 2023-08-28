import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'replace_ui_state.dart';

class ReplaceUiCubit extends Cubit<ReplaceUiState> {
  ReplaceUiCubit() : super(ReplaceUiInitial());

   ShowText(){
    emit(ShowText());
  }

  ShowImage(){
    emit(ShowImage());
  }

  ShowCircle(){
    emit(ShowCircle());
  }
}
