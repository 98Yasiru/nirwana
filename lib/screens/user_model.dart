class UserModel{
  String?uid;
  String?Name;
  String?Email;

  UserModel({this.uid,this.Email,this.Name});

  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      Email: map['email'],
      Name: map['name'],
    );

  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': Email,
      'name': Name,

    };
  }
}