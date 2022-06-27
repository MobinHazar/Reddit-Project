import 'package:flutter/material.dart';

class  extends StatelessWidget {
  const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
    children: [
      Container(
        child: Text('Profile'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Profile_Screen();
              },
            ),
          );
        },
      ),
      Container(
        child: Text('Channel'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Channel_Screen();
              },
            ),
          );
        },
      ),
      Container(
        child: Text('Saved Posts'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const SavePosts_Screen();
              },
            ),
          );
        },
      ),
      Container(
        child: Text('About us'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const AboutUs_Screen();
              },
            ),
          );
        },
      ),
    ],

    );
  }
}
