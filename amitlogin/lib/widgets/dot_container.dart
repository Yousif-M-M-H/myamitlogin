import 'package:flutter/material.dart';

class DotContainer extends StatelessWidget {
  const DotContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 219, 218, 218),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              'https://th.bing.com/th/id/R.cb30ca1a036a5a92e601a99bca6ab0be?rik=an2qQEGc%2bPEr6Q&riu=http%3a%2f%2fpngimg.com%2fuploads%2fdot%2fdot_PNG29.png&ehk=hdx2iz8D6q80naltFpzMfbqpTEzXfaX1EapPxEpQF9s%3d&risl=&pid=ImgRaw&r=0')
        ],
      ),
    );
  }
}
