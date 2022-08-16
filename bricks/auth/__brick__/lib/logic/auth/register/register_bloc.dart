import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/data/models/global/location/cities/cities_model.dart';
import 'package:{{name}}/data/models/global/location/countries/countries_model.dart';
import 'package:{{name}}/data/models/auth/register_model.dart';
import 'package:{{name}}/data/repository/auth/auth_repo.dart';
import 'package:{{name}}/logic/auth/register/register_state.dart';
import 'package:{{name}}/shared/cache/locale_storage.dart';
import 'package:{{name}}/shared/error/failuers.dart';
import 'package:{{name}}/shared/localization/trans.dart';
import 'package:{{name}}/shared/theme/helper.dart';
import 'package:{{name}}/views/widgets/gender_drop.dart';


class RegisterBloc extends Cubit<RegisterState> {
  RegisterBloc({required this.authRepoImpl}) : super(const RegisterState.initial());

  static RegisterBloc of(BuildContext context) {
    return BlocProvider.of<RegisterBloc>(context);
  }

  final AuthRepoImpl authRepoImpl;

  CountriesDatum? selectedCountry;
  CitiesDatum? selectedCity;
  String cCode = '';
  bool passVisible = true, addressIsNull = false;

  togglePassV() {
    passVisible = !passVisible;
    _update;
  }

  RegisterModel? registerModel = RegisterModel(
    birthdate: DateTime.now().toString().split(' ').first,
    fcmToken: KStorage.i.getFcmToken,
    lang_id: KStorage.i.getLangId,
    currency_id: KStorage.i.getcurrencyId,
  );
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController buildingController = TextEditingController();
  TextEditingController intercomController = TextEditingController();
  TextEditingController floorController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController detailedAddressController = TextEditingController();
  File? image;

  register() async {
    if (registerModel?.detailed_address == null) {
      addressIsNull = true;
      _update;
      return;
    }
    emit(const RegisterState.loading());

    try {
      registerModel = registerModel?.copyWith(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        mobile: phoneController.text,
        password_confirmation: passwordConfirmController.text,
        fcmToken: KStorage.i.getFcmToken,
        lang_id: KStorage.i.getLangId,
        currency_id: KStorage.i.getcurrencyId,
        state: stateController.text,
        street: streetController.text,
        building: buildingController.text,
        intercom: intercomController.text,
        floor: floorController.text,
        zipcode: zipcodeController.text,
      );

      debugPrint('=================  :${registerModel?.toJson()} ');
      final result = await authRepoImpl.register(registerModel!);

      result.fold(
        (l) {
          emit(RegisterState.error(error: KFailure.failureToMSG(l)));
          debugPrint('================= Register (Bloc): Failed $l ');
        },
        (r) {
          emit(const RegisterState.success());
          debugPrint('================= Register (Bloc): Success ');
        },
      );
    } catch (e) {
      debugPrint('================= Register (Bloc) (catch):  $e');
      emit(RegisterState.error(error: Tr.get.something_went_wrong));
    }
  }

  setbirthdate(String val) {
    registerModel = registerModel?.copyWith(birthdate: val);
    _update;
  }

  KGenderModel? selectedGender;

  selectGender(KGenderModel? selected) {
    registerModel = registerModel?.copyWith(gender: selected?.slug);
    selectedGender = selected ?? KGenderModel.genders.first;
    _update;
  }

  selectImage(File? image) async {
    if (image != null) {
      String image64 = base64Encode(await image.readAsBytes());
      registerModel = registerModel?.copyWith(image: image64);
      _update;
    } else {
      KHelper.showSnackBar('Plase select ');
    }
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900, 1),
      lastDate: DateTime.now(),
    );
    registerModel = registerModel?.copyWith(birthdate: picked.toString().split(' ').first);
    debugPrint('================= ${registerModel?.birthdate}');
    _update;
  }

  Future<void> selectCityId(int id, CitiesDatum? citiesDatum) async {
    selectedCity = citiesDatum;
    registerModel = registerModel?.copyWith(city_id: id);
    debugPrint('================= ${registerModel?.city_id} ');
    _update;
  }

  Future<void> selectCountry(CountriesDatum? country) async {
    selectedCountry = country;
    _update;
  }

  selectAddress(BuildContext context) async {
    try {
      final result = await KHelper.showMaps(context);
      if (result != null) {
        registerModel = registerModel?.copyWith(
          latitude: result.latlng.latitude,
          longitude: result.latlng.longitude,
          detailed_address: result.address,
        );
        detailedAddressController.text = result.address;
        debugPrint('================= ${registerModel?.detailed_address} : ');
        debugPrint('detailedAddress ${detailedAddressController.text} : ');
      }
      _update;
    } catch (e) {
      KHelper.showSnackBar(Tr.get.address_is_null);
    }
  }

  get _update {
    emit(const RegisterState.loading());
    emit(const RegisterState.initial());
  }
}
