import 'package:compare/user.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Compare extends StatefulWidget {
  const Compare({super.key});

  @override
  State<Compare> createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  User user1 = User(
      phoneNum: '3222',
      userName: 'Amal',
      userImage:
          'https://img.freepik.com/premium-vector/person-avatar-design_24877-38137.jpg?w=2000');
  User user2 = User(
      phoneNum: '4444',
      userName: 'kiran',
      userImage:
          'https://cdn1.iconfinder.com/data/icons/project-management-8/500/worker-512.png');
  void compareUsers(BuildContext context) {
    if (user1 == user2) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('They are equal')));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('They are NOT equal')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          phoneWidget(
              phoneNo: user1.phoneNum,
              name: user1.userName,
              image: user1.userImage),
          ElevatedButton(
              onPressed: () => compareUsers(context),
              child: Icon(FontAwesomeIcons.facebook)),
          phoneWidget(
            phoneNo: user2.phoneNum,
            name: user2.userName,
            image: user2.userImage,
          ),
        ],
      ),
    );
  }
}

phoneWidget({
  required phoneNo,
  required name,
  required image,
}) {
  return Column(
    children: [
      Image.network(
        image,
        width: 200,
      ),
      const SizedBox(height: 5),
      Text(
        name,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
      Text(
        phoneNo,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    ],
  );
}
