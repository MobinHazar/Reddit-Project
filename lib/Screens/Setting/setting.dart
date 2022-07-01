import 'package:flutter/material.dart';
import 'package:reddit/Screens/Setting/AboutUs.dart';
import '../Login/login_screen.dart';
import 'Saved_page.dart';
import 'new_channel.dart';

class  Setting extends StatelessWidget {
  const Setting ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar( backgroundColor: Colors.red,
        foregroundColor: Colors.yellowAccent,
        title: const Text("Settings", style: TextStyle(color: Colors.white, fontSize: 25),),
      ),
      body:Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(bottom: 5),
            height: 60,
            width: 400,
            child: ElevatedButton(
              child: const Text('Profile'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            height: 60,
            width: 400,
            child: ElevatedButton(
              child: const Text('Saved Posts'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SavedPage();
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            height: 60,
            width: 400,
            child: ElevatedButton(
              child: const Text('New Channel'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NewChannel();
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            height: 60,
            width: 400,
            child: ElevatedButton(
              child: const Text('About Us'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AboutUs();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}