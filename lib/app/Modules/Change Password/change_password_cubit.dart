import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit() : super(ChangePasswordInitial());
  bool currentObSecurePassword = false;
  bool newObSecurePassword = false;
  bool confirmObSecurePassword = false;

  void changeObSecureField({required String changeCase}) {
    switch (changeCase) {
      case "current":
        currentObSecurePassword = !currentObSecurePassword;
        emit(ChangingPasswordObSecureState());
        break;

      case 'new':
        newObSecurePassword = !newObSecurePassword;
        emit(ChangingPasswordObSecureState());
        break;
      case 'confirm':
        confirmObSecurePassword = !confirmObSecurePassword;
        emit(ChangingPasswordObSecureState());
        break;
    }
  }
}
