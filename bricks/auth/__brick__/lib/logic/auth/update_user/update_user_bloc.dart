import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/data/models/auth/update_user_model.dart';
import 'package:{{name}}/data/repository/auth/auth_repo.dart';
import 'package:{{name}}/logic/auth/update_user/update_user_state.dart';
import 'package:{{name}}/shared/cache/locale_storage.dart';
import 'package:{{name}}/shared/error/failuers.dart';
import 'package:{{name}}/views/widgets/gender_drop.dart';

class UpdateUserBloc extends Cubit<UpdateUserState> {
  UpdateUserBloc({required this.authRepoImpl}) : super(const UpdateUserState.initial());

  static UpdateUserBloc of(BuildContext context) {
    return BlocProvider.of<UpdateUserBloc>(context);
  }

  final AuthRepoImpl authRepoImpl;

  final TextEditingController nameCtrl = TextEditingController(text: KStorage.i.getUserInfo?.data?.name);
  final TextEditingController phoneCtrl = TextEditingController(text: KStorage.i.getUserInfo?.data?.mobile);
  final TextEditingController emailCtrl = TextEditingController(text: KStorage.i.getUserInfo?.data?.email);

  String cCode = '';
  UpdateUserModel? updateUserModel = UpdateUserModel(
    birthdate: KStorage.i.getUserInfo?.data?.birthdate,
    gender: KStorage.i.getUserInfo?.data?.gender,
    currencyId: KStorage.i.getcurrencyId,
    langId: KStorage.i.getLangId,
    id: KStorage.i.getUserInfo?.data?.id.toString(),
  );
  KGenderModel selectedGender = KGenderModel.bySlug(KStorage.i.getUserInfo?.data?.gender ?? '');

  update() async {
    emit(const UpdateUserState.loading());

    try {
      updateUserModel = updateUserModel?.copyWith(
        name: nameCtrl.text,
        email: emailCtrl.text,
        mobile: phoneCtrl.text,
        gender: selectedGender.slug,
      );

      debugPrint('================= ${updateUserModel?.toJson()} : ');

      final result = await authRepoImpl.updateUser(model: updateUserModel!);
      result.fold(
        (l) {
          emit(UpdateUserState.error(failure: l));
          debugPrint('================= Login (Bloc): Failed => $l ');
        },
        (r) {
          emit(const UpdateUserState.success());
          debugPrint('================= Login (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= Login (Bloc) (catch):  $e');
      emit(const UpdateUserState.error(failure: KFailure.someThingWrongPleaseTryagain()));
    }
  }

  selectGender(KGenderModel? selected) {
    selectedGender = selected ?? KGenderModel.genders.first;
    updateUserModel = updateUserModel?.copyWith(gender: selected?.slug);
    _update;
  }

  selectImage(File? image) async {
    if (image != null) {
      String image64 = base64Encode(await image.readAsBytes());
      updateUserModel = updateUserModel?.copyWith(image: image64);
      _update;
    }
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900, 1),
      lastDate: DateTime.now(),
    );
    updateUserModel = updateUserModel?.copyWith(birthdate: picked.toString().split(' ').first);
    debugPrint('================= ${updateUserModel?.birthdate}');
    _update;
  }

  get _update {
    emit(const UpdateUserState.loading());
    emit(const UpdateUserState.initial());
  }
}
