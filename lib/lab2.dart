import 'package:flutter/material.dart';
class MiCard extends StatelessWidget {
  const MiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MiCard'),
        backgroundColor: Colors.blue.shade400,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            getCard(),
            getAvatar()
          ],
        ),
      ),
    );
  }

  Container getCard() {
    return  Container(
      alignment: Alignment.center,
      height: 200,
      width: 300,
      margin: EdgeInsets.all(50),
      decoration: const BoxDecoration(color: Colors.lightBlueAccent, borderRadius: BorderRadius.all(Radius.circular(12))),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hi, I am Junjun", style: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person),
              Text('dungttt.21it@vku.udn.vn')
            ],
          )
        ],
      ),
    );
  }

  Container getAvatar() {
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        border: Border.all(color: Colors.lightBlueAccent),
        image: const DecorationImage(image: NetworkImage("https://img.lovepik.com/free-png/20211216/lovepik-boy-avatar-png-image_401704859_wh1200.png"),
            fit: BoxFit.cover),
      ),
    );
  }
}
