class UserModel {
  String firstName;
  String lastName;
  String emailAddress;
  String birthdate;
  String createdAt;
  String phoneNumber;
  String uid;
  String? profilePic;

  UserModel({
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.birthdate,
    required this.createdAt,
    required this.phoneNumber,
    required this.uid,
    required this.profilePic
  });
  // from map
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      emailAddress: map['emailAddress'] ?? '',
      birthdate: map['birthdate'] ?? '',
      createdAt: map['createdAt'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      uid: map['uid'] ?? '',
      profilePic: map['profilePic'] ?? ''
    );
  }

  //to map
  Map<String, dynamic> toMap() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "emailAddress": emailAddress,
      "birthdate": birthdate,
      "createAt": createdAt,
      "phoneNumber": phoneNumber,
      "uid": uid,
      "profilePic": profilePic,
    };
  }
}
