import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'show_hide_password_state.dart';

class ShowHidePasswordCubit extends Cubit<ShowHidePasswordState> {
  ShowHidePasswordCubit() : super(ShowHidePasswordInitial());

  bool isShown = false ;  
  void shawHidePass(){
    if (isShown){
      isShown = false;
    }else{
      isShown = true;
    }
    // isShown = !isShown;
  emit(ShowHidePasswordInitial());
  }
}
