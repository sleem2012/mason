import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/data/repository/auth/auth_repo.dart';
import 'package:{{name}}/logic/auth/verfiy_code/verfiy_code_state.dart';
import 'package:{{name}}/shared/error/failuers.dart';
import 'package:{{name}}/shared/localization/trans.dart';

class VerfiyCodeBloc extends Cubit<VerfiyCodeState> {
  VerfiyCodeBloc({required this.authRepoImpl}) : super(const VerfiyCodeState.initial());

  static VerfiyCodeBloc of(BuildContext context) {
    return BlocProvider.of<VerfiyCodeBloc>(context);
  }

  final AuthRepoImpl authRepoImpl;

  verfiyCode({required String token}) async {
    emit(const VerfiyCodeState.loading());
    try {
      final result = await authRepoImpl.verifyToken(token: token);

      result.fold(
        (l) {
          emit(VerfiyCodeState.error(error: KFailure.failureToMSG(l)));
          debugPrint('================= Verfiy Code  (Bloc): Failed $l ');
        },
        (r) {
          emit(const VerfiyCodeState.success());
          debugPrint('================= Verfiy Code  (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= Verfiy Code  (Bloc) (catch):  $e');
      emit(VerfiyCodeState.error(error: Tr.get.something_went_wrong));
    }
  }
}
