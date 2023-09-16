import 'package:equatable/equatable.dart';

class User extends Equatable {
  String phoneNum;
  String userName;
  String userImage;

  User({
    required this.phoneNum,
    required this.userName,
    required this.userImage,
  });

  @override
  List<Object> get props => [userName,userImage,phoneNum];
}
