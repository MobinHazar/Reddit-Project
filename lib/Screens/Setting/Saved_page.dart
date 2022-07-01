import 'package:flutter/material.dart';
import 'package:reddit/Screens/Setting/postList.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
      AppBar(
        backgroundColor: Colors.grey,
        title: const Text("Saved Posts", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, ),),
      ),
      body: getBody(),
    );
  }
  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 30,
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: List.generate(postsList.length, (index) {
                return Container(
                  width: (size.width - 70) / 2,
                  height: (size.width - 70) / 2,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 15,
                            offset: const Offset(0, 1))
                      ],
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(postsList[index]['postImg']),
                          fit: BoxFit.cover)),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
