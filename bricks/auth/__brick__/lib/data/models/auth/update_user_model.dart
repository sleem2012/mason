// ignore_for_file: public_member_api_docs, sort_constructors_first
class UpdateUserModel {
  String? id;
  String? name;
  String? email;
  String? mobile;
  String? gender;
  String? birthdate;
  String? langId;
  String? currencyId;
  String? image;

  UpdateUserModel({this.id, this.name, this.email, this.mobile, this.gender, this.birthdate, this.langId, this.currencyId, this.image});

  UpdateUserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    gender = json['gender'];
    birthdate = json['birthdate'];
    langId = json['lang_id'];
    currencyId = json['currency_id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name;
    }
    if (email != null) {
      data['email'] = email;
    }
    if (mobile != null) {
      data['mobile'] = mobile;
    }
    if (gender != null) {
      data['gender'] = gender;
    }
    if (birthdate != null) {
      data['birthdate'] = birthdate;
    }
    if (langId != null) {
      data['lang_id'] = langId;
    }
    if (currencyId != null) {
      data['currency_id'] = currencyId;
    }
    if (image != null) {
      data['image'] = image;
    }
    return data;
  }

  UpdateUserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? mobile,
    String? gender,
    String? birthdate,
    String? langId,
    String? currencyId,
    String? image,
  }) {
    return UpdateUserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      mobile: mobile ?? this.mobile,
      gender: gender ?? this.gender,
      birthdate: birthdate ?? this.birthdate,
      langId: langId ?? this.langId,
      currencyId: currencyId ?? this.currencyId,
      image: image ?? this.image,
    );
  }

  @override
  bool operator ==(covariant UpdateUserModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.email == email &&
        other.mobile == mobile &&
        other.gender == gender &&
        other.birthdate == birthdate &&
        other.langId == langId &&
        other.currencyId == currencyId &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        mobile.hashCode ^
        gender.hashCode ^
        birthdate.hashCode ^
        langId.hashCode ^
        currencyId.hashCode ^
        image.hashCode;
  }
}
