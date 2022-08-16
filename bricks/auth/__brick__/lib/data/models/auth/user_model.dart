// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  bool? success;
  String? status;
  String? message;
  UserModelData? data;

  UserModel({this.success, this.status, this.message, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? UserModelData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }

  UserModel copyWith({
    bool? success,
    String? status,
    String? message,
    UserModelData? data,
  }) {
    return UserModel(
      success: success ?? this.success,
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}

class UserModelData {
  int? id;
  String? name;
  String? email;
  String? mobile;
  UserImage? image;
  String? gender;
  String? birthdate;
  UserRole? type;
  UserLanguage? language;
  UserCurrency? currency;
  UserAddress? address;
  UserCompany? company;
  UserCompanyBranchModel? companyBranch;
  String? token;
  String? tokenExpired;

  UserModelData({
    this.id,
    this.name,
    this.email,
    this.mobile,
    this.image,
    this.gender,
    this.birthdate,
    this.type,
    this.language,
    this.currency,
    this.address,
    this.company,
    this.companyBranch,
    this.token,
    this.tokenExpired,
  });

  UserModelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    image = json['image'] != null ? UserImage.fromJson(json['image']) : null;
    gender = json['gender'];
    birthdate = json['birthdate'];
    type = json['type'] != null ? UserRole.fromJson(json['type']) : null;
    language = json['language'] != null ? UserLanguage.fromJson(json['language']) : null;
    currency = json['currency'] != null ? UserCurrency.fromJson(json['currency']) : null;
    address = json['address'] != null ? UserAddress.fromJson(json['address']) : null;
    company = json['company'] != null ? UserCompany.fromJson(json['company']) : null;
    companyBranch = json['company_branch'] != null ? UserCompanyBranchModel.fromJson(json['company_branch']) : null;
    token = json['token'];
    tokenExpired = json['token_expired'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['mobile'] = mobile;
    if (image != null) {
      data['image'] = image!.toJson();
    }
    data['gender'] = gender;
    data['birthdate'] = birthdate;
    if (type != null) {
      data['type'] = type!.toJson();
    }
    if (language != null) {
      data['language'] = language!.toJson();
    }
    if (currency != null) {
      data['currency'] = currency!.toJson();
    }
    if (address != null) {
      data['address'] = address!.toJson();
    }
    if (company != null) {
      data['company'] = company!.toJson();
    }
    if (companyBranch != null) {
      data['company_branch'] = companyBranch!.toJson();
    }
    data['token'] = token;
    data['token_expired'] = tokenExpired;

    return data;
  }

  UserModelData copyWith({
    int? id,
    String? name,
    String? email,
    String? mobile,
    UserImage? image,
    String? gender,
    String? birthdate,
    UserRole? type,
    UserLanguage? language,
    UserCurrency? currency,
    UserAddress? address,
    UserCompany? company,
    UserCompanyBranchModel? companyBranch,
    String? token,
    String? tokenExpired,
  }) {
    return UserModelData(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
      image: image ?? this.image,
      gender: gender ?? this.gender,
      birthdate: birthdate ?? this.birthdate,
      type: type ?? this.type,
      language: language ?? this.language,
      currency: currency ?? this.currency,
      address: address ?? this.address,
      company: company ?? this.company,
      companyBranch: companyBranch ?? this.companyBranch,
      token: token ?? this.token,
      tokenExpired: tokenExpired ?? this.tokenExpired,
    );
  }
}

class UserImage {
  String? s16px;
  String? s32px;
  String? s64px;
  String? s128px;
  String? s256px;
  String? s512px;

  UserImage({this.s16px, this.s32px, this.s64px, this.s128px, this.s256px, this.s512px});

  UserImage.fromJson(Map<String, dynamic> json) {
    s16px = json['16px'];
    s32px = json['32px'];
    s64px = json['64px'];
    s128px = json['128px'];
    s256px = json['256px'];
    s512px = json['512px'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['16px'] = s16px;
    data['32px'] = s32px;
    data['64px'] = s64px;
    data['128px'] = s128px;
    data['256px'] = s256px;
    data['512px'] = s512px;
    return data;
  }
}

class UserRole {
  int? id;
  String? role;
  Name? name;

  UserRole({this.id, this.role, this.name});

  UserRole.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    role = json['role'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['role'] = role;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    return data;
  }
}

class Name {
  String? key;
  String? value;

  Name({this.key, this.value});

  Name.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}

class UserLanguage {
  int? id;
  String? symbols;
  Name? nameValues;

  UserLanguage({this.id, this.symbols, this.nameValues});

  UserLanguage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbols = json['symbols'];
    nameValues = json['name_values'] != null ? Name.fromJson(json['name_values']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['symbols'] = symbols;
    if (nameValues != null) {
      data['name_values'] = nameValues!.toJson();
    }
    return data;
  }
}

class UserCurrency {
  int? id;
  String? dollar;
  String? symbols;
  Name? name;
  bool? isVisible;

  UserCurrency({this.id, this.dollar, this.symbols, this.name, this.isVisible});

  UserCurrency.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dollar = json['dollar'];
    symbols = json['symbols'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    isVisible = json['is_visible'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['dollar'] = dollar;
    data['symbols'] = symbols;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['is_visible'] = isVisible;
    return data;
  }
}

class UserAddress {
  int? id;
  String? latitude;
  String? longitude;
  String? state;
  String? street;
  String? building;
  String? intercom;
  String? floor;
  String? zipcode;
  String? detailedAddress;
  AddressCity? cityId;

  UserAddress(
      {this.id,
      this.latitude,
      this.longitude,
      this.state,
      this.street,
      this.building,
      this.intercom,
      this.floor,
      this.zipcode,
      this.detailedAddress,
      this.cityId});

  UserAddress.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    state = json['state'];
    street = json['street'];
    building = json['building'];
    intercom = json['intercom'];
    floor = json['floor'];
    zipcode = json['zipcode'];
    detailedAddress = json['detailed_address'];
    cityId = json['city_id'] != null ? AddressCity.fromJson(json['city_id']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['state'] = state;
    data['street'] = street;
    data['building'] = building;
    data['intercom'] = intercom;
    data['floor'] = floor;
    data['zipcode'] = zipcode;
    data['detailed_address'] = detailedAddress;
    if (cityId != null) {
      data['city_id'] = cityId!.toJson();
    }
    return data;
  }
}

class AddressCity {
  int? id;
  String? symbols;
  Name? name;
  AddressCountryId? countryId;
  bool? isVisible;

  AddressCity({this.id, this.symbols, this.name, this.countryId, this.isVisible});

  AddressCity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbols = json['symbols'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    countryId = json['country_id'] != null ? AddressCountryId.fromJson(json['country_id']) : null;
    isVisible = json['is_visible'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['symbols'] = symbols;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (countryId != null) {
      data['country_id'] = countryId!.toJson();
    }
    data['is_visible'] = isVisible;
    return data;
  }
}

class AddressCountryId {
  int? id;
  String? symbols;
  Name? name;
  UserLanguage? defaultLanguage;
  Flag? flag;
  bool? isVisible;

  AddressCountryId({this.id, this.symbols, this.name, this.defaultLanguage, this.flag, this.isVisible});

  AddressCountryId.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbols = json['symbols'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    defaultLanguage = json['default_language'] != null ? UserLanguage.fromJson(json['default_language']) : null;
    flag = json['flag'] != null ? Flag.fromJson(json['flag']) : null;
    isVisible = json['is_visible'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['symbols'] = symbols;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (defaultLanguage != null) {
      data['default_language'] = defaultLanguage!.toJson();
    }
    if (flag != null) {
      data['flag'] = flag!.toJson();
    }
    data['is_visible'] = isVisible;
    return data;
  }
}

class Flag {
  String? s16px;
  String? s32px;
  String? s64px;
  String? s128px;

  Flag({this.s16px, this.s32px, this.s64px, this.s128px});

  Flag.fromJson(Map<String, dynamic> json) {
    s16px = json['16px'];
    s32px = json['32px'];
    s64px = json['64px'];
    s128px = json['128px'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['16px'] = s16px;
    data['32px'] = s32px;
    data['64px'] = s64px;
    data['128px'] = s128px;
    return data;
  }
}

class UserCompany {
  int? id;
  Name? name;
  Name? description;
  UserImage? logo;
  List<CompanyCoverPhotos>? coverPhotos;
  List<String>? hotlines;
  List<Commercial>? commercial;
  CompanyOwner? owner;
  dynamic agent;
  CompanyPackages? packages;

  UserCompany({this.id, this.name, this.description, this.logo, this.coverPhotos, this.hotlines, this.commercial, this.owner, this.agent, this.packages});

  UserCompany.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    description = json['description'] != null ? Name.fromJson(json['description']) : null;
    logo = json['logo'] != null ? UserImage.fromJson(json['logo']) : null;
    if (json['cover_photos'] != null) {
      coverPhotos = <CompanyCoverPhotos>[];
      json['cover_photos'].forEach((v) {
        coverPhotos!.add(CompanyCoverPhotos.fromJson(v));
      });
    }
    hotlines = json['hotlines'].cast<String>();
    if (json['commercial'] != null) {
      commercial = <Commercial>[];
      json['commercial'].forEach((v) {
        commercial!.add(Commercial.fromJson(v));
      });
    }
    owner = json['owner'] != null ? CompanyOwner.fromJson(json['owner']) : null;
    agent = json['agent'];
    packages = json['packages'] != null ? CompanyPackages.fromJson(json['packages']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (description != null) {
      data['description'] = description!.toJson();
    }
    if (logo != null) {
      data['logo'] = logo!.toJson();
    }
    if (coverPhotos != null) {
      data['cover_photos'] = coverPhotos!.map((v) => v.toJson()).toList();
    }
    data['hotlines'] = hotlines;
    if (commercial != null) {
      data['commercial'] = commercial!.map((v) => v.toJson()).toList();
    }
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }
    data['agent'] = agent;
    if (packages != null) {
      data['packages'] = packages!.toJson();
    }
    return data;
  }
}

class CompanyCoverPhotos {
  String? s128px;
  String? s256px;
  String? s512px;
  String? s1024px;

  CompanyCoverPhotos({this.s128px, this.s256px, this.s512px, this.s1024px});

  CompanyCoverPhotos.fromJson(Map<String, dynamic> json) {
    s128px = json['128px'];
    s256px = json['256px'];
    s512px = json['512px'];
    s1024px = json['1024px'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['128px'] = s128px;
    data['256px'] = s256px;
    data['512px'] = s512px;
    data['1024px'] = s1024px;
    return data;
  }
}

class Commercial {
  String? id;
  String? key;
  String? file;

  Commercial({this.id, this.key, this.file});

  Commercial.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    key = json['key'];
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['key'] = key;
    data['file'] = file;
    return data;
  }
}

class CompanyOwner {
  int? id;
  String? name;
  String? email;
  String? mobile;
  UserImage? image;
  String? gender;
  String? birthdate;
  int? typeId;
  int? langId;
  int? currencyId;
  AddressId? addressId;
  int? isOnline;
  int? isBlocked;
  String? blockReason;
  List<OwnerPaymentInfos>? paymentInfos;

  CompanyOwner({
    this.id,
    this.name,
    this.email,
    this.mobile,
    this.image,
    this.gender,
    this.birthdate,
    this.typeId,
    this.langId,
    this.currencyId,
    this.addressId,
    this.isOnline,
    this.isBlocked,
    this.blockReason,
    this.paymentInfos,
  });

  CompanyOwner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    image = json['image'] != null ? UserImage.fromJson(json['image']) : null;
    gender = json['gender'];
    birthdate = json['birthdate'];
    typeId = json['type_id'];
    langId = json['lang_id'];
    currencyId = json['currency_id'];
    addressId = json['address_id'] != null ? AddressId.fromJson(json['address_id']) : null;
    isOnline = json['is_online'];
    isBlocked = json['is_blocked'];
    blockReason = json['block_reason'];
    if (json['payment_infos'] != null) {
      paymentInfos = <OwnerPaymentInfos>[];
      json['payment_infos'].forEach((v) {
        paymentInfos!.add(OwnerPaymentInfos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['mobile'] = mobile;
    if (image != null) {
      data['image'] = image!.toJson();
    }
    data['gender'] = gender;
    data['birthdate'] = birthdate;
    data['type_id'] = typeId;
    data['lang_id'] = langId;
    data['currency_id'] = currencyId;
    if (addressId != null) {
      data['address_id'] = addressId!.toJson();
    }
    data['is_online'] = isOnline;
    data['is_blocked'] = isBlocked;
    data['block_reason'] = blockReason;
    if (paymentInfos != null) {
      data['payment_infos'] = paymentInfos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AddressId {
  int? id;
  int? cityId;
  String? latitude;
  String? longitude;
  String? state;
  String? street;
  String? building;
  String? intercom;
  String? floor;
  String? zipcode;
  String? detailedAddress;
  String? createdAt;
  String? updatedAt;

  AddressId(
      {this.id,
      this.cityId,
      this.latitude,
      this.longitude,
      this.state,
      this.street,
      this.building,
      this.intercom,
      this.floor,
      this.zipcode,
      this.detailedAddress,
      this.createdAt,
      this.updatedAt});

  AddressId.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cityId = json['city_id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    state = json['state'];
    street = json['street'];
    building = json['building'];
    intercom = json['intercom'];
    floor = json['floor'];
    zipcode = json['zipcode'];
    detailedAddress = json['detailed_address'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['city_id'] = cityId;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['state'] = state;
    data['street'] = street;
    data['building'] = building;
    data['intercom'] = intercom;
    data['floor'] = floor;
    data['zipcode'] = zipcode;
    data['detailed_address'] = detailedAddress;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class OwnerPaymentInfos {
  int? id;
  PaymentType? type;
  dynamic value;
  bool? isVisible;

  OwnerPaymentInfos({this.id, this.type, this.value, this.isVisible});

  OwnerPaymentInfos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'] != null ? PaymentType.fromJson(json['type']) : null;
    value = json['value'];
    isVisible = json['is_visible'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (type != null) {
      data['type'] = type!.toJson();
    }
    data['value'] = value;
    data['is_visible'] = isVisible;
    return data;
  }
}

class PaymentType {
  int? id;
  String? type;
  int? name;
  int? isVisible;
  String? createdAt;
  String? updatedAt;

  PaymentType({this.id, this.type, this.name, this.isVisible, this.createdAt, this.updatedAt});

  PaymentType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    isVisible = json['is_visible'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    data['name'] = name;
    data['is_visible'] = isVisible;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class CompanyPackages {
  int? id;
  String? code;
  String? cost;
  String? tax;
  String? fees;
  Name? name;
  Name? description;
  CompanyType? companyType;
  UserCurrency? currency;

  CompanyPackages({this.id, this.code, this.cost, this.tax, this.fees, this.name, this.description, this.companyType, this.currency});

  CompanyPackages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    cost = json['cost'];
    tax = json['tax'];
    fees = json['fees'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    description = json['description'] != null ? Name.fromJson(json['description']) : null;
    companyType = json['company_type'] != null ? CompanyType.fromJson(json['company_type']) : null;
    currency = json['currency'] != null ? UserCurrency.fromJson(json['currency']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['code'] = code;
    data['cost'] = cost;
    data['tax'] = tax;
    data['fees'] = fees;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (description != null) {
      data['description'] = description!.toJson();
    }
    if (companyType != null) {
      data['company_type'] = companyType!.toJson();
    }
    if (currency != null) {
      data['currency'] = currency!.toJson();
    }
    return data;
  }
}

class CompanyType {
  int? id;
  String? name;

  CompanyType({this.id, this.name});

  CompanyType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class UserCompanyBranchModel {
  int? id;
  Company? company;
  Address? address;

  UserCompanyBranchModel({this.id, this.company, this.address});

  UserCompanyBranchModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    company = json['company'] != null ? Company.fromJson(json['company']) : null;
    address = json['address'] != null ? Address.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (company != null) {
      data['company'] = company!.toJson();
    }
    if (address != null) {
      data['address'] = address!.toJson();
    }
    return data;
  }
}

class Company {
  int? id;
  Name? name;
  Name? description;
  Logo? logo;
  List<CoverPhotos>? coverPhotos;
  List<String>? hotlines;
  List<Commercial>? commercial;
  CompanyOwner? owner;
  dynamic agent;
  Packages? packages;

  Company({this.id, this.name, this.description, this.logo, this.coverPhotos, this.hotlines, this.commercial, this.owner, this.agent, this.packages});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    description = json['description'] != null ? Name.fromJson(json['description']) : null;
    logo = json['logo'] != null ? Logo.fromJson(json['logo']) : null;
    if (json['cover_photos'] != null) {
      coverPhotos = <CoverPhotos>[];
      json['cover_photos'].forEach((v) {
        coverPhotos!.add(CoverPhotos.fromJson(v));
      });
    }
    hotlines = json['hotlines'].cast<String>();
    if (json['commercial'] != null) {
      commercial = <Commercial>[];
      json['commercial'].forEach((v) {
        commercial!.add(Commercial.fromJson(v));
      });
    }
    owner = json['owner'] != null ? CompanyOwner.fromJson(json['owner']) : null;
    agent = json['agent'];
    packages = json['packages'] != null ? Packages.fromJson(json['packages']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (description != null) {
      data['description'] = description!.toJson();
    }
    if (logo != null) {
      data['logo'] = logo!.toJson();
    }
    if (coverPhotos != null) {
      data['cover_photos'] = coverPhotos!.map((v) => v.toJson()).toList();
    }
    data['hotlines'] = hotlines;
    if (commercial != null) {
      data['commercial'] = commercial!.map((v) => v.toJson()).toList();
    }
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }
    data['agent'] = agent;
    if (packages != null) {
      data['packages'] = packages!.toJson();
    }
    return data;
  }
}

class Logo {
  String? s16px;
  String? s32px;
  String? s64px;
  String? s128px;
  String? s256px;
  String? s512px;

  Logo({this.s16px, this.s32px, this.s64px, this.s128px, this.s256px, this.s512px});

  Logo.fromJson(Map<String, dynamic> json) {
    s16px = json['16px'];
    s32px = json['32px'];
    s64px = json['64px'];
    s128px = json['128px'];
    s256px = json['256px'];
    s512px = json['512px'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['16px'] = s16px;
    data['32px'] = s32px;
    data['64px'] = s64px;
    data['128px'] = s128px;
    data['256px'] = s256px;
    data['512px'] = s512px;
    return data;
  }
}

class CoverPhotos {
  String? s128px;
  String? s256px;
  String? s512px;
  String? s1024px;

  CoverPhotos({this.s128px, this.s256px, this.s512px, this.s1024px});

  CoverPhotos.fromJson(Map<String, dynamic> json) {
    s128px = json['128px'];
    s256px = json['256px'];
    s512px = json['512px'];
    s1024px = json['1024px'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['128px'] = s128px;
    data['256px'] = s256px;
    data['512px'] = s512px;
    data['1024px'] = s1024px;
    return data;
  }
}

class Packages {
  int? id;
  String? code;
  String? cost;
  String? tax;
  String? fees;
  Name? name;
  Name? description;
  CompanyType? companyType;
  Currency? currency;

  Packages({this.id, this.code, this.cost, this.tax, this.fees, this.name, this.description, this.companyType, this.currency});

  Packages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    cost = json['cost'];
    tax = json['tax'];
    fees = json['fees'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    description = json['description'] != null ? Name.fromJson(json['description']) : null;
    companyType = json['company_type'] != null ? CompanyType.fromJson(json['company_type']) : null;
    currency = json['currency'] != null ? Currency.fromJson(json['currency']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['code'] = code;
    data['cost'] = cost;
    data['tax'] = tax;
    data['fees'] = fees;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (description != null) {
      data['description'] = description!.toJson();
    }
    if (companyType != null) {
      data['company_type'] = companyType!.toJson();
    }
    if (currency != null) {
      data['currency'] = currency!.toJson();
    }
    return data;
  }
}

class Currency {
  int? id;
  String? dollar;
  String? symbols;
  Name? name;
  bool? isVisible;

  Currency({this.id, this.dollar, this.symbols, this.name, this.isVisible});

  Currency.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dollar = json['dollar'];
    symbols = json['symbols'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    isVisible = json['is_visible'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['dollar'] = dollar;
    data['symbols'] = symbols;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['is_visible'] = isVisible;
    return data;
  }
}

class Address {
  int? id;
  String? latitude;
  String? longitude;
  String? state;
  String? street;
  String? building;
  String? intercom;
  String? floor;
  String? zipcode;
  String? detailedAddress;
  CityId? cityId;

  Address(
      {this.id,
      this.latitude,
      this.longitude,
      this.state,
      this.street,
      this.building,
      this.intercom,
      this.floor,
      this.zipcode,
      this.detailedAddress,
      this.cityId});

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    state = json['state'];
    street = json['street'];
    building = json['building'];
    intercom = json['intercom'];
    floor = json['floor'];
    zipcode = json['zipcode'];
    detailedAddress = json['detailed_address'];
    cityId = json['city_id'] != null ? CityId.fromJson(json['city_id']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['state'] = state;
    data['street'] = street;
    data['building'] = building;
    data['intercom'] = intercom;
    data['floor'] = floor;
    data['zipcode'] = zipcode;
    data['detailed_address'] = detailedAddress;
    if (cityId != null) {
      data['city_id'] = cityId!.toJson();
    }
    return data;
  }
}

class CityId {
  int? id;
  String? symbols;
  Name? name;
  CountryId? countryId;
  bool? isVisible;

  CityId({this.id, this.symbols, this.name, this.countryId, this.isVisible});

  CityId.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbols = json['symbols'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    countryId = json['country_id'] != null ? CountryId.fromJson(json['country_id']) : null;
    isVisible = json['is_visible'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['symbols'] = symbols;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (countryId != null) {
      data['country_id'] = countryId!.toJson();
    }
    data['is_visible'] = isVisible;
    return data;
  }
}

class CountryId {
  int? id;
  String? symbols;
  Name? name;
  DefaultLanguage? defaultLanguage;
  Flag? flag;
  bool? isVisible;

  CountryId({this.id, this.symbols, this.name, this.defaultLanguage, this.flag, this.isVisible});

  CountryId.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbols = json['symbols'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    defaultLanguage = json['default_language'] != null ? DefaultLanguage.fromJson(json['default_language']) : null;
    flag = json['flag'] != null ? Flag.fromJson(json['flag']) : null;
    isVisible = json['is_visible'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['symbols'] = symbols;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (defaultLanguage != null) {
      data['default_language'] = defaultLanguage!.toJson();
    }
    if (flag != null) {
      data['flag'] = flag!.toJson();
    }
    data['is_visible'] = isVisible;
    return data;
  }
}

class DefaultLanguage {
  int? id;
  String? symbols;
  Name? nameValues;

  DefaultLanguage({this.id, this.symbols, this.nameValues});

  DefaultLanguage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbols = json['symbols'];
    nameValues = json['name_values'] != null ? Name.fromJson(json['name_values']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['symbols'] = symbols;
    if (nameValues != null) {
      data['name_values'] = nameValues!.toJson();
    }
    return data;
  }
}
