class SignInModel {
  final String username;
  final String password;

  SignInModel({
    required this.username,
    required this.password,
  });

  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      username: json["username"] ?? '',
      password: json["password"] ?? '',
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "password": password,
    };
  }
}
