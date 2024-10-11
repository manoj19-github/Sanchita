class UserModel {
  final dynamic displayName;
  final String email;
  final bool isEmailVerified;
  final dynamic uid;
  UserModel(
      {required this.displayName,
      required this.email,
      required this.isEmailVerified,
      required this.uid});
}
