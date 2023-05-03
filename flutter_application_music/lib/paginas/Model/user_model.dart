class Users {
  final String userId;
  final String userName;
  final String userPassword;
  Users({
    required this.userId,
    required this.userName,
    required this.userPassword,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
      userId: json['userId'],
      userName: json['userName'],
      userPassword: json['userPassword']);

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'userName': userName,
      'userPassword': userPassword,
    };
  }
}
