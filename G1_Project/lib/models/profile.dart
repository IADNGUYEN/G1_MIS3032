class Profile {
  int id;
  String name;
  String gender;
  String birthday;
  String phoneNumber;
  String email;
  String address;

  Profile({
    required this.id,
    required this.name,
    required this.gender,
    required this.birthday,
    required this.phoneNumber,
    required this.email,
    required this.address,
  });

  Profile.fromJSON(Map<String, dynamic> jsonMap)
      : id = jsonMap['id'],
        name = jsonMap['name'],
        gender = jsonMap['gender'],
        birthday = jsonMap['birthday'],
        phoneNumber = jsonMap['phoneNumber'],
        address = jsonMap['address'],
        email = jsonMap['email'];
}
