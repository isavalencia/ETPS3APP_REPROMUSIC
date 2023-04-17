class Users {
  final String userId;
  final String userName;
  final String userEmail;
  final String userPassword;

  Users(
      {required this.userId,
      required this.userName,
      required this.userPassword,
      required this.userEmail});

  factory Users.fromJson(Map<String, dynamic> json) => Users(
      userId: json['userId'],
      userName: json['userName'],
      userEmail: json['userEmail'],
      userPassword: json['userPassword']);

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'userName': userName,
      'userEmail': userEmail,
      'userPassword': userPassword,
    };
  }
}
