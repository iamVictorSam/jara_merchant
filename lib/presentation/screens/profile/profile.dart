import 'package:flutter/material.dart';
import 'package:jara_merchant/presentation/screens/profile/components/body.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        elevation: 0.5,
      ),
      body: const ProfileBody(),
    );
  }
}
