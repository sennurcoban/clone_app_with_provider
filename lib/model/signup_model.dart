class SignUpModel {
  String firstName;
  String lastName;
  String emailAddress;
  DateTime? birthdate;
  String createdAt;
  String uid;

  SignUpModel({
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.birthdate,
    required this.createdAt,
    required this.uid,
  });
  // from map
  factory SignUpModel.fromMap(Map<String, dynamic> map) {
    return SignUpModel(
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      emailAddress: map['emailAddress'] ?? '',
      birthdate: map['birthdate'] == null ? null : DateTime.parse(map['birthdate']).toLocal(),
      createdAt: map['createdAt'] ?? '',
      uid: map['uid'] ?? '',
    );
  }

  //to map
  Map<String, dynamic> toMap() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "emailAddress": emailAddress,
      "birthdate": birthdate?.toIso8601String(),
      "createAt": createdAt,
      "uid": uid,
    };
  }
}
